//! The state of the explore screen and how keys change it. Drawing lives in `render`.

use std::collections::HashSet;
use std::path::PathBuf;

use crossterm::event::{KeyCode, KeyEvent, KeyModifiers};

use crate::game::{Command, Discovery, Event, Game, Journal, NodeKind, State, View, ViewNode, save};
use crate::pack::{LuaScripts, Pack};
use crate::world::{Labels, OneShot, OneShotKind, Palette, Rgb, Span, SpaceId, Style, TextFx};

use super::ambient::{Ambience, OneShots};

/// Seconds a new place takes to fade in.
const FADE: f32 = 0.35;
/// Characters per second at which a new place's description writes itself out.
const REVEAL_SPEED: f32 = 260.0;
/// Seconds between background saves of what has been looked at.
const SAVE_EVERY: f32 = 5.0;

pub enum Start {
    Fresh,
    At(SpaceId),
    Resume(State),
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Focus {
    Tree,
    Actions,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Flow {
    Continue,
    Quit,
}

/// One line of the tree panel.
pub enum Row<'a> {
    Header(&'a str),
    Node {
        node: &'a ViewNode,
        depth: usize,
        /// Index of the row this one is nested under.
        parent: Option<usize>,
        open: bool,
    },
}

/// Flattens what the player perceives into the lines of the tree, honouring what is folded.
pub fn rows<'a>(view: &'a View, labels: &'a Labels, open: &HashSet<String>) -> Vec<Row<'a>> {
    fn push<'a>(
        node: &'a ViewNode,
        depth: usize,
        parent: Option<usize>,
        open: &HashSet<String>,
        out: &mut Vec<Row<'a>>,
    ) {
        // The space itself is always unfolded: it is the page you are on.
        let unfolded = node.kind == NodeKind::Space || open.contains(&node.key);
        let index = out.len();
        out.push(Row::Node {
            node,
            depth,
            parent,
            open: unfolded,
        });
        if unfolded {
            for child in &node.children {
                push(child, depth + 1, Some(index), open, out);
            }
        }
    }
    let mut out = Vec::new();
    push(&view.space, 0, None, open, &mut out);
    for (title, nodes) in [
        (&labels.destinations, &view.exits),
        (&labels.carrying, &view.items),
    ] {
        if !nodes.is_empty() {
            out.push(Row::Header(title));
            nodes.iter().for_each(|node| push(node, 1, None, open, &mut out));
        }
    }
    out
}

/// Everything that moves on its own.
pub struct Motion {
    pub enabled: bool,
    pub time: f32,
    pub ambience: Ambience,
    pub shots: OneShots,
    /// The palette as currently shown, easing towards the space's own.
    pub palette: Palette,
    /// 0 just after arriving somewhere, 1 once the place has faded in.
    pub fade: f32,
    /// While a new place's description writes itself out: how many characters are visible.
    pub reveal: Option<f32>,
    /// Sparks waiting for the next frame, which knows where the panels are.
    pub sparks: Option<Rgb>,
}

pub struct Explore {
    pub game: Game<LuaScripts>,
    pub view: View,
    pub labels: Labels,
    pub open: HashSet<String>,
    /// Key of the highlighted node.
    pub cursor: String,
    cursor_row: usize,
    pub focus: Focus,
    pub action: usize,
    /// What the last action or look produced, one entry per paragraph.
    pub result: Vec<Vec<Span>>,
    pub tree_scroll: usize,
    pub detail_scroll: usize,
    /// The journal and how far it is scrolled, while it is open.
    pub journal: Option<(Journal, usize)>,
    pub motion: Motion,
    save_path: Option<PathBuf>,
    unsaved: bool,
    since_save: f32,
    /// Shown in the footer when saving fails.
    pub trouble: Option<String>,
}

fn lerp_palette(from: Palette, to: Palette, t: f32) -> Palette {
    Palette {
        bg: from.bg.lerp(to.bg, t),
        text: from.text.lerp(to.text, t),
        dim: from.dim.lerp(to.dim, t),
        accent: from.accent.lerp(to.accent, t),
        border: from.border.lerp(to.border, t),
    }
}

impl Explore {
    pub fn new(pack: Pack, start: Start, save_path: Option<PathBuf>, motion: bool, seed: u64) -> Self {
        let world = std::rc::Rc::new(pack.world);
        let labels = world.labels.clone();
        let (mut game, fresh) = match start {
            Start::Fresh => (Game::new(world, pack.scripts), true),
            Start::At(space) => (Game::resume(world, pack.scripts, State::new(space)), true),
            Start::Resume(state) => (Game::resume(world, pack.scripts, state), false),
        };
        let events = if fresh { game.begin() } else { Vec::new() };
        let view = game.view();
        let mut explore = Self {
            cursor: view.space.key.clone(),
            cursor_row: 0,
            motion: Motion {
                enabled: motion,
                time: 0.0,
                ambience: Ambience::new(seed),
                shots: OneShots::default(),
                palette: view.palette,
                fade: 0.0,
                reveal: None,
                sparks: None,
            },
            game,
            view,
            labels,
            open: HashSet::new(),
            focus: Focus::Tree,
            action: 0,
            result: Vec::new(),
            tree_scroll: 0,
            detail_scroll: 0,
            journal: None,
            save_path,
            unsaved: fresh,
            since_save: 0.0,
            trouble: None,
        };
        explore.arrive();
        explore.present(events);
        explore.look();
        explore
    }

    pub fn rows(&self) -> Vec<Row<'_>> {
        rows(&self.view, &self.labels, &self.open)
    }

    pub fn selected(&self) -> Option<&ViewNode> {
        self.rows().into_iter().find_map(|row| match row {
            Row::Node { node, .. } if node.key == self.cursor => Some(node),
            _ => None,
        })
    }

    /// Advances everything that moves by `dt` seconds.
    pub fn step(&mut self, dt: f32, width: u16, height: u16) {
        self.since_save += dt;
        if self.unsaved && self.since_save > SAVE_EVERY {
            self.save();
        }
        let motion = &mut self.motion;
        if !motion.enabled {
            motion.palette = self.view.palette;
            motion.fade = 1.0;
            motion.reveal = None;
            return;
        }
        motion.time += dt;
        motion.ambience.set(&self.view.ambience);
        motion.ambience.step(dt, width, height);
        motion.shots.step(dt);
        motion.palette = lerp_palette(motion.palette, self.view.palette, 1.0 - (-dt * 5.0).exp());
        motion.fade = (motion.fade + dt / FADE).min(1.0);
        if let Some(shown) = &mut motion.reveal {
            *shown += dt * REVEAL_SPEED;
            if *shown > 4000.0 {
                motion.reveal = None;
            }
        }
    }

    pub fn save(&mut self) {
        self.unsaved = false;
        self.since_save = 0.0;
        if let Some(path) = &self.save_path {
            self.trouble = save::write(path, self.game.world(), self.game.state())
                .err()
                .map(|error| format!("could not save: {error}"));
        }
    }

    /// Resets the screen for the place the player has just entered.
    fn arrive(&mut self) {
        self.cursor = self.view.space.key.clone();
        self.cursor_row = 0;
        self.focus = Focus::Tree;
        self.action = 0;
        self.tree_scroll = 0;
        self.detail_scroll = 0;
        self.motion.fade = 0.0;
        self.motion.reveal = Some(0.0);
    }

    /// Turns what happened into lines of the result box and into effects.
    fn present(&mut self, events: Vec<Event>) {
        let accent = Style {
            fg: Some(self.view.palette.accent),
            ..Style::default()
        };
        let line = |lead: &str, style: Style, name: Vec<Span>| {
            let mut spans = vec![Span {
                text: lead.to_owned(),
                style,
            }];
            spans.extend(name.into_iter().map(|span| Span { style, ..span }));
            spans
        };
        for event in events {
            match event {
                Event::Said(spans) => self.result.push(spans),
                Event::Gained(name) => self.result.push(line("+ ", accent, name)),
                Event::Lost(name) => {
                    let dim = Style {
                        fg: Some(self.view.palette.dim),
                        ..Style::default()
                    };
                    self.result.push(line("− ", dim, name));
                }
                Event::Discovered { what, name } => {
                    let label = match what {
                        Discovery::Wonder => &self.labels.wonder,
                        Discovery::Secret => &self.labels.secret,
                    };
                    let glow = Style {
                        fx: Some(TextFx::Glow),
                        bold: true,
                        ..accent
                    };
                    self.result.push(line(&format!("✦ {label}: "), glow, name));
                    self.motion.sparks = Some(self.view.palette.accent);
                }
                Event::Fx(shot) if self.motion.enabled => match shot.kind {
                    OneShotKind::Sparkle => {
                        self.motion.sparks = Some(shot.color.unwrap_or(self.view.palette.accent));
                    }
                    _ => self.motion.shots.start(OneShot { ..shot }),
                },
                Event::Fx(_) | Event::Moved { .. } => {}
            }
        }
    }

    /// Tells the game the highlighted node has the player's attention.
    fn look(&mut self) {
        let events = self.game.apply(Command::Look {
            key: self.cursor.clone(),
        });
        self.view = self.game.view();
        self.present(events);
        self.unsaved = true;
    }

    /// Keeps the cursor on something that still exists after the world changed.
    fn settle(&mut self) {
        let rows = self.rows();
        let is_node = |row: &Row| matches!(row, Row::Node { .. });
        let found = rows.iter().position(
            |row| matches!(row, Row::Node { node, .. } if node.key == self.cursor),
        );
        let index = found.unwrap_or_else(|| {
            let last = rows.len().saturating_sub(1);
            let near = self.cursor_row.min(last);
            (0..=near).rev().find(|&i| is_node(&rows[i])).unwrap_or(0)
        });
        let (key, actions) = match &rows[index] {
            Row::Node { node, .. } => (node.key.clone(), node.actions.len()),
            Row::Header(_) => (self.view.space.key.clone(), 0),
        };
        drop(rows);
        self.cursor = key;
        self.cursor_row = index;
        self.action = self.action.min(actions.saturating_sub(1));
        if actions == 0 {
            self.focus = Focus::Tree;
        }
    }

    fn move_cursor(&mut self, to: impl FnOnce(usize, &[Row]) -> Option<usize>) {
        let rows = self.rows();
        let Some(target) = to(self.cursor_row, &rows) else {
            return;
        };
        let Some(Row::Node { node, .. }) = rows.get(target) else {
            return;
        };
        let key = node.key.clone();
        drop(rows);
        if key != self.cursor {
            self.cursor = key;
            self.cursor_row = target;
            self.action = 0;
            self.detail_scroll = 0;
            self.result.clear();
            self.look();
            self.settle();
        }
    }

    fn step_cursor(&mut self, delta: isize) {
        self.move_cursor(|from, rows| {
            let mut index = from as isize + delta;
            while let Some(row) = usize::try_from(index).ok().and_then(|i| rows.get(i)) {
                if matches!(row, Row::Node { .. }) {
                    return Some(index as usize);
                }
                index += delta.signum();
            }
            None
        });
    }

    fn act(&mut self) {
        let Some(command) = self.selected().and_then(|node| {
            let action = node.actions.get(self.action)?;
            Some(Command::Act {
                key: node.key.clone(),
                action: action.id,
            })
        }) else {
            return;
        };
        let events = self.game.apply(command);
        let moved = events.iter().any(|e| matches!(e, Event::Moved { .. }));
        self.view = self.game.view();
        self.result.clear();
        if moved {
            self.arrive();
        } else {
            self.settle();
        }
        self.present(events);
        // The node may show something new now, and the player is looking straight at it.
        self.look();
        self.settle();
        self.save();
    }

    fn fold(&mut self, open: bool) -> bool {
        let Some(node) = self.selected() else {
            return false;
        };
        let foldable = !node.children.is_empty() && node.kind != NodeKind::Space;
        let key = node.key.clone();
        if !foldable || self.open.contains(&key) == open {
            return false;
        }
        if open {
            self.open.insert(key);
        } else {
            self.open.remove(&key);
        }
        true
    }

    fn toggle_journal(&mut self) {
        self.journal = match self.journal {
            Some(_) => None,
            None => Some((self.game.journal(), 0)),
        };
    }

    pub fn key(&mut self, key: KeyEvent) -> Flow {
        // Any key finishes the text that is still writing itself out.
        self.motion.reveal = None;
        self.motion.fade = 1.0;
        if key.modifiers.contains(KeyModifiers::CONTROL) && key.code == KeyCode::Char('c') {
            return Flow::Quit;
        }
        if let Some((_, scroll)) = &mut self.journal {
            match key.code {
                KeyCode::Up => *scroll = scroll.saturating_sub(1),
                KeyCode::Down => *scroll += 1,
                KeyCode::PageUp => *scroll = scroll.saturating_sub(10),
                KeyCode::PageDown => *scroll += 10,
                KeyCode::Home => *scroll = 0,
                KeyCode::Char('j' | 'q') | KeyCode::Esc | KeyCode::Enter => self.journal = None,
                _ => {}
            }
            return Flow::Continue;
        }
        let actions = self.selected().map_or(0, |node| node.actions.len());
        match (self.focus, key.code) {
            (_, KeyCode::Char('q')) => return Flow::Quit,
            (_, KeyCode::Char('j')) => self.toggle_journal(),
            (_, KeyCode::PageUp) => self.detail_scroll = self.detail_scroll.saturating_sub(4),
            (_, KeyCode::PageDown) => self.detail_scroll += 4,

            (Focus::Tree, KeyCode::Up) => self.step_cursor(-1),
            (Focus::Tree, KeyCode::Down) => self.step_cursor(1),
            (Focus::Tree, KeyCode::Home) => self.move_cursor(|_, _| Some(0)),
            (Focus::Tree, KeyCode::End) => self.move_cursor(|_, rows| rows.len().checked_sub(1)),
            (Focus::Tree, KeyCode::Left) => {
                if !self.fold(false) {
                    self.move_cursor(|from, rows| match rows.get(from) {
                        Some(Row::Node { parent, .. }) => *parent,
                        _ => None,
                    });
                }
            }
            (Focus::Tree, KeyCode::Right) => {
                if !self.fold(true) && actions > 0 {
                    self.focus = Focus::Actions;
                }
            }
            (Focus::Tree, KeyCode::Enter | KeyCode::Char(' ')) => {
                if self.fold(true) {
                } else if actions == 1 {
                    self.action = 0;
                    self.act();
                } else if actions > 1 {
                    self.focus = Focus::Actions;
                } else {
                    self.fold(false);
                }
            }
            (Focus::Tree, KeyCode::Tab) if actions > 0 => self.focus = Focus::Actions,

            (Focus::Actions, KeyCode::Up) => {
                self.action = (self.action + actions.max(1) - 1) % actions.max(1);
            }
            (Focus::Actions, KeyCode::Down) => self.action = (self.action + 1) % actions.max(1),
            (Focus::Actions, KeyCode::Enter | KeyCode::Char(' ')) => self.act(),
            (Focus::Actions, KeyCode::Left | KeyCode::Esc | KeyCode::Tab | KeyCode::BackTab) => {
                self.focus = Focus::Tree;
            }
            _ => {}
        }
        Flow::Continue
    }
}
