//! The terminal interface: truecolor, animated, and nothing but a view of the game.

mod ambient;
mod canvas;
mod explore;
mod render;
mod terminal;
mod text;

use std::io;
use std::path::PathBuf;
use std::time::{Duration, Instant, SystemTime, UNIX_EPOCH};

use crossterm::event::{self, Event, KeyCode, KeyEventKind, KeyModifiers};

use crate::error::{Error, Result};
use crate::game::save;
use crate::pack;
use crate::world::{AmbientKind, AmbientSpec, Palette, SpaceId};

use ambient::Ambience;
use canvas::{Canvas, ColorDepth};
use explore::{Explore, Flow, Start};
use terminal::Terminal;

/// How to run the interface.
#[derive(Clone, Debug)]
pub struct Options {
    /// The pack to play; when absent the player picks one from `packs_dir`.
    pub pack: Option<PathBuf>,
    pub packs_dir: PathBuf,
    pub saves_dir: PathBuf,
    /// Start a throwaway journey in this space instead of the saved or starting one.
    pub at: Option<SpaceId>,
    pub motion: bool,
}

/// Time between frames while something is moving.
const FRAME: Duration = Duration::from_millis(33);

/// The terminal plus what is needed to draw frames on it at a steady pace.
struct Stage {
    terminal: Terminal,
    depth: ColorDepth,
    shown: Option<Canvas>,
    motion: bool,
    last: Instant,
}

impl Stage {
    fn enter(motion: bool) -> io::Result<Self> {
        Ok(Self {
            terminal: Terminal::enter()?,
            depth: ColorDepth::detect(),
            shown: None,
            motion,
            last: Instant::now(),
        })
    }

    /// Draws a frame, then waits for input: until the next frame is due when animating,
    /// indefinitely otherwise. `draw` receives the seconds elapsed since the previous frame.
    fn frame(&mut self, draw: impl FnOnce(&mut Canvas, f32)) -> io::Result<Option<Event>> {
        let (width, height) = self.terminal.size()?;
        let started = Instant::now();
        let dt = started.duration_since(self.last).as_secs_f32().min(0.1);
        self.last = started;
        let mut canvas = Canvas::new(width, height, Palette::default().bg);
        draw(&mut canvas, dt);
        canvas.flush(self.shown.as_ref(), self.depth, self.terminal.out())?;
        self.shown = Some(canvas);

        let ready = !self.motion || event::poll(FRAME.saturating_sub(started.elapsed()))?;
        let input = if ready { Some(event::read()?) } else { None };
        if matches!(input, Some(Event::Resize(..))) {
            // The terminal's contents are unknown after a resize: repaint everything.
            self.shown = None;
        }
        Ok(input)
    }
}

/// A seed for cosmetic randomness only (where a spark flies), never for anything in the world.
fn cosmetic_seed() -> u64 {
    SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .map_or(1, |elapsed| elapsed.as_nanos() as u64)
}

/// Shows a list and returns the chosen index, or `None` if the player backed out.
fn menu(
    stage: &mut Stage,
    title: &str,
    subtitle: &str,
    entries: &[(String, String)],
) -> io::Result<Option<usize>> {
    let palette = Palette::default();
    let mut ambience = Ambience::new(cosmetic_seed());
    ambience.set(&[AmbientSpec {
        kind: AmbientKind::Stars,
        glyphs: Vec::new(),
        colors: Vec::new(),
        rate: Some(0.6),
        speed: None,
        strength: None,
    }]);
    let mut chosen = 0usize;
    let mut time = 0.0;
    let animated = stage.motion;
    loop {
        let input = stage.frame(|canvas, dt| {
            time += dt;
            canvas.clear(palette.bg);
            if animated {
                ambience.step(dt, canvas.width(), canvas.height());
                ambience.particles(canvas);
            }
            let mut pen = render::Pen {
                canvas,
                palette,
                time,
                fade: 1.0,
            };
            render::menu(&mut pen, title, subtitle, entries, chosen);
        })?;
        let Some(Event::Key(key)) = input else {
            continue;
        };
        if key.kind == KeyEventKind::Release {
            continue;
        }
        match key.code {
            KeyCode::Up => chosen = (chosen + entries.len() - 1) % entries.len().max(1),
            KeyCode::Down => chosen = (chosen + 1) % entries.len().max(1),
            KeyCode::Enter | KeyCode::Char(' ') => return Ok(Some(chosen)),
            KeyCode::Char('q') | KeyCode::Esc => return Ok(None),
            KeyCode::Char('c') if key.modifiers.contains(KeyModifiers::CONTROL) => return Ok(None),
            _ => {}
        }
    }
}

fn play(stage: &mut Stage, mut explore: Explore) -> io::Result<()> {
    loop {
        let input = stage.frame(|canvas, dt| {
            explore.step(dt, canvas.width(), canvas.height());
            render::explore(canvas, &mut explore);
        })?;
        if let Some(Event::Key(key)) = input
            && key.kind != KeyEventKind::Release
            && explore.key(key) == Flow::Quit
        {
            explore.save();
            return Ok(());
        }
    }
}

pub fn run(options: Options) -> Result<()> {
    let terminal = |error: io::Error| Error::io("terminal", error);
    let mut stage: Option<Stage> = None;

    let path = match &options.pack {
        Some(path) => path.clone(),
        None => {
            let mut packs = pack::discover(&options.packs_dir);
            match packs.len() {
                0 => {
                    return Err(Error::Usage(format!(
                        "no packs found in {}/ (name a pack directory, or see --help)",
                        options.packs_dir.display()
                    )));
                }
                1 => packs.remove(0).path,
                _ => {
                    let entries: Vec<(String, String)> = packs
                        .iter()
                        .map(|p| (p.meta.name.clone(), p.meta.description.clone()))
                        .collect();
                    let picker = stage.insert(Stage::enter(options.motion).map_err(terminal)?);
                    match menu(picker, "Feathers", "Choose a world.", &entries).map_err(terminal)? {
                        Some(index) => packs.swap_remove(index).path,
                        None => return Ok(()),
                    }
                }
            }
        }
    };

    // Errors from here on are reported after the terminal is restored (the stage drops first).
    let pack = pack::load(&path)?;
    if let Some(space) = &options.at
        && pack.world.space(space).is_none()
    {
        return Err(Error::Usage(format!(
            "--at: this pack has no space '{space}'"
        )));
    }
    // A journey started with --at is a throwaway: it neither reads nor writes the save.
    let save_path = options
        .at
        .is_none()
        .then(|| save::path(&options.saves_dir, &pack.world));
    let saved = match &save_path {
        Some(path) => save::read(path, &pack.world)?,
        None => None,
    };

    let stage = match &mut stage {
        Some(stage) => stage,
        None => stage.insert(Stage::enter(options.motion).map_err(terminal)?),
    };
    let start = match (options.at, saved) {
        (Some(space), _) => Start::At(space),
        (None, None) => Start::Fresh,
        (None, Some(state)) => {
            let labels = &pack.world.labels;
            let entries = [
                (labels.resume.clone(), String::new()),
                (labels.new_journey.clone(), String::new()),
            ];
            let about = &pack.world.meta;
            match menu(stage, &about.name, &about.description, &entries).map_err(terminal)? {
                Some(0) => Start::Resume(state),
                Some(_) => Start::Fresh,
                None => return Ok(()),
            }
        }
    };
    let explore = Explore::new(pack, start, save_path, options.motion, cosmetic_seed());
    play(stage, explore).map_err(terminal)
}
