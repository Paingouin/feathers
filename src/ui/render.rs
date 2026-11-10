//! Drawing. Everything here turns state into cells; nothing here changes the game.

use crate::game::{Journal, NodeKind, Seen, TrackerCount, ViewNode};
use crate::world::{Palette, Rgb, Span, Style, TextFx};

use super::canvas::Canvas;
use super::explore::{Explore, Focus, Row};
use super::text::{self, Glyph};

const WHITE: Rgb = Rgb::new(0xff, 0xf8, 0xe8);
/// Below this width the two panels are stacked instead of side by side.
const STACK_BELOW: i32 = 80;
/// Prose is wrapped no wider than this, however wide the panel: long lines are hard to read.
const MEASURE: usize = 76;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Rect {
    pub x: i32,
    pub y: i32,
    pub w: i32,
    pub h: i32,
}

impl Rect {
    /// The area inside the border, with one column of padding on each side.
    pub fn inner(self) -> Rect {
        Rect {
            x: self.x + 2,
            y: self.y + 1,
            w: (self.w - 4).max(0),
            h: (self.h - 2).max(0),
        }
    }

    fn right(self) -> i32 {
        self.x + self.w
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Layout {
    pub tree: Rect,
    pub detail: Rect,
    pub footer: i32,
}

/// Splits the screen into the tree panel, the detail panel and the footer line.
pub fn layout(width: u16, height: u16) -> Layout {
    let (w, h) = (i32::from(width), i32::from(height));
    let body = (h - 1).max(0);
    let (tree, detail) = if w >= STACK_BELOW {
        let left = (w * 2 / 5).clamp(30, 48);
        (
            Rect {
                x: 0,
                y: 0,
                w: left,
                h: body,
            },
            Rect {
                x: left,
                y: 0,
                w: w - left,
                h: body,
            },
        )
    } else {
        let top = (body * 45 / 100).max(6).min(body);
        (
            Rect {
                x: 0,
                y: 0,
                w,
                h: top,
            },
            Rect {
                x: 0,
                y: top,
                w,
                h: body - top,
            },
        )
    };
    Layout {
        tree,
        detail,
        footer: h - 1,
    }
}

/// Draws onto a canvas with the current palette, clock and fade.
pub struct Pen<'a> {
    pub canvas: &'a mut Canvas,
    pub palette: Palette,
    pub time: f32,
    /// 0 draws text invisibly (in its background colour), 1 at full strength.
    pub fade: f32,
}

impl Pen<'_> {
    /// The colour of the `index`-th character of a run, including its text effect.
    fn ink(&self, style: Style, base: Rgb, index: usize) -> Rgb {
        let color = style.fg.unwrap_or(base);
        let i = index as f32;
        let t = self.time;
        match style.fx {
            None => color,
            Some(TextFx::Shimmer) => {
                let sweep = (t * 9.0).rem_euclid(34.0) - 4.0;
                let near = (1.0 - (sweep - i.rem_euclid(30.0)).abs() / 3.5).max(0.0);
                style
                    .fg
                    .unwrap_or(self.palette.accent)
                    .lerp(WHITE, near * 0.75)
            }
            Some(TextFx::Wave) => {
                let k = 0.5 + 0.5 * (t * 3.0 - i * 0.6).sin();
                style
                    .fg
                    .unwrap_or(self.palette.accent)
                    .lerp(self.palette.dim, k * 0.6)
            }
            Some(TextFx::Flicker) => {
                let k = (0.5 + 0.3 * (t * 11.0 + i * 1.7).sin() + 0.2 * (t * 23.0 + i * 0.9).sin())
                    .clamp(0.0, 1.0);
                style
                    .fg
                    .unwrap_or(Rgb::new(0xff, 0xa8, 0x4a))
                    .lerp(self.palette.dim, k * 0.55)
            }
            Some(TextFx::Glow) => {
                let k = 0.5 + 0.5 * (t * 1.8).sin();
                style
                    .fg
                    .unwrap_or(self.palette.accent)
                    .lerp(WHITE, k * 0.45)
            }
        }
    }

    fn put(&mut self, x: i32, y: i32, ch: char, color: Rgb, style: Style) -> i32 {
        let bg = self.canvas.cell(x, y).map_or(self.palette.bg, |c| c.bg);
        self.canvas.put(
            x,
            y,
            ch,
            bg.lerp(color, self.fade),
            style.bold,
            style.italic,
        )
    }

    /// Draws styled glyphs on one row, clipped at `max_x`. The spaces inside a line wipe what
    /// is behind them, so ambience shows around the prose but never between its words.
    pub fn line(&mut self, x: i32, y: i32, glyphs: &[Glyph], base: Rgb, max_x: i32) -> i32 {
        let mut column = x;
        for (index, (ch, style)) in glyphs.iter().enumerate() {
            let width = unicode_width::UnicodeWidthChar::width(*ch).unwrap_or(0) as i32;
            if column + width > max_x {
                break;
            }
            if *ch == ' ' {
                self.blank(column, column + 1, y, None);
                column += 1;
            } else {
                column += self.put(column, y, *ch, self.ink(*style, base, index), *style);
            }
        }
        column
    }

    pub fn text(&mut self, x: i32, y: i32, text: &str, color: Rgb, max_x: i32) -> i32 {
        self.line(x, y, &text::plain(text, Style::default()), color, max_x)
    }

    /// Wipes a run of cells so nothing shows through, optionally recolouring their background.
    fn blank(&mut self, x0: i32, x1: i32, y: i32, bg: Option<Rgb>) {
        for x in x0..x1 {
            if let Some(cell) = self.canvas.cell_mut(x, y) {
                cell.ch = ' ';
                if let Some(bg) = bg {
                    cell.bg = bg;
                }
            }
        }
    }

    /// A rounded frame with a title set into its top edge.
    pub fn frame(&mut self, rect: Rect, title: &[Glyph], focused: bool) {
        if rect.w < 2 || rect.h < 2 {
            return;
        }
        let pulse = 0.55 + 0.15 * (self.time * 2.2).sin();
        let color = if focused {
            self.palette.border.lerp(self.palette.accent, pulse)
        } else {
            self.palette.border
        };
        let plain = Style::default();
        let (left, right, top, bottom) = (rect.x, rect.right() - 1, rect.y, rect.y + rect.h - 1);
        for x in left + 1..right {
            self.put(x, top, '─', color, plain);
            self.put(x, bottom, '─', color, plain);
        }
        for y in top + 1..bottom {
            self.put(left, y, '│', color, plain);
            self.put(right, y, '│', color, plain);
        }
        for (x, y, corner) in [
            (left, top, '╭'),
            (right, top, '╮'),
            (left, bottom, '╰'),
            (right, bottom, '╯'),
        ] {
            self.put(x, y, corner, color, plain);
        }
        self.title(rect, top, title);
    }

    fn title(&mut self, rect: Rect, y: i32, title: &[Glyph]) {
        let room = usize::try_from(rect.w - 6).unwrap_or(0);
        if title.is_empty() || room == 0 {
            return;
        }
        let title = text::truncate(title.to_vec(), room);
        let end = rect.x + 3 + text::width(&title) as i32;
        self.blank(rect.x + 2, end + 1, y, None);
        self.line(rect.x + 3, y, &title, self.palette.accent, rect.right() - 2);
    }

    /// A horizontal rule across a frame, joined to its sides, with an optional title.
    fn divider(&mut self, rect: Rect, y: i32, title: &str) {
        let color = self.palette.border;
        let plain = Style::default();
        self.put(rect.x, y, '├', color, plain);
        self.put(rect.right() - 1, y, '┤', color, plain);
        for x in rect.x + 1..rect.right() - 1 {
            self.put(x, y, '─', color, plain);
        }
        let dim = Style {
            fg: Some(self.palette.dim),
            ..plain
        };
        self.title(rect, y, &text::plain(title, dim));
    }

    /// The bar behind the highlighted line.
    fn highlight(&mut self, rect: Rect, y: i32, strong: bool) {
        let breath = 0.5 + 0.5 * (self.time * 2.6).sin();
        let amount = if strong { 0.20 + 0.07 * breath } else { 0.09 };
        let bg = self
            .palette
            .bg
            .lerp(self.palette.accent, amount * self.fade);
        self.blank(rect.x + 1, rect.right() - 1, y, Some(bg));
    }
}

fn accent_glyphs(text: &str, palette: &Palette) -> Vec<Glyph> {
    let style = Style {
        fg: Some(palette.accent),
        ..Style::default()
    };
    text::plain(text, style)
}

fn seen_mark(seen: Seen, palette: &Palette) -> (char, Rgb) {
    match seen {
        Seen::New => ('●', palette.accent),
        Seen::Partial => ('◐', palette.dim.lerp(palette.accent, 0.5)),
        Seen::Complete => ('✓', palette.dim),
    }
}

fn tree_line(node: &ViewNode, open: bool, palette: &Palette) -> (Vec<Glyph>, Rgb) {
    let plain = Style::default();
    let dim = Style {
        fg: Some(palette.dim),
        ..plain
    };
    let (marker, marker_style) = match node.kind {
        NodeKind::Exit => (
            '→',
            Style {
                fg: Some(palette.accent),
                ..plain
            },
        ),
        _ if !node.children.is_empty() => (if open { '▾' } else { '▸' }, dim),
        NodeKind::Item => (
            '✦',
            Style {
                fg: Some(palette.accent),
                ..plain
            },
        ),
        _ => ('·', dim),
    };
    let mut line = vec![(marker, marker_style), (' ', plain)];
    if let Some(icon) = &node.icon {
        line.extend(text::plain(
            icon,
            Style {
                fg: Some(palette.accent),
                ..plain
            },
        ));
        line.push((' ', plain));
    }
    line.extend(text::glyphs(&node.name));
    if node.wonder {
        let glow = Style {
            fg: Some(palette.accent),
            fx: Some(TextFx::Glow),
            ..plain
        };
        line.extend(text::plain(" ✶", glow));
    }
    if let Some(hint) = &node.locked {
        let aside = Style {
            italic: true,
            ..dim
        };
        line.extend(text::plain("  (", aside));
        line.extend(text::glyphs(hint).into_iter().map(|(c, _)| (c, aside)));
        line.push((')', aside));
    }
    let base = if node.locked.is_some() {
        palette.dim
    } else {
        palette.text
    };
    (line, base)
}

fn tree_panel(pen: &mut Pen, rect: Rect, explore: &mut Explore) {
    let palette = pen.palette;
    let inner = rect.inner();
    let mut title = text::glyphs(&explore.view.region);
    if !title.is_empty() {
        title.extend(text::plain(" · ", Style::default()));
    }
    title.extend(text::glyphs(&explore.view.space.name));
    pen.frame(rect, &title, explore.focus == Focus::Tree);

    let rows = super::explore::rows(&explore.view, &explore.labels, &explore.open);
    let cursor = rows
        .iter()
        .position(|row| matches!(row, Row::Node { node, .. } if node.key == explore.cursor))
        .unwrap_or(0);
    let visible = usize::try_from(inner.h).unwrap_or(0).max(1);
    let scroll = explore
        .tree_scroll
        .min(cursor)
        .max((cursor + 1).saturating_sub(visible));
    explore.tree_scroll = scroll;

    for (line, (index, row)) in rows
        .iter()
        .enumerate()
        .skip(scroll)
        .take(visible)
        .enumerate()
    {
        let y = inner.y + line as i32;
        match row {
            Row::Header(title) => {
                let style = Style {
                    fg: Some(palette.dim),
                    bold: true,
                    ..Style::default()
                };
                pen.line(
                    inner.x,
                    y,
                    &text::plain(title, style),
                    palette.dim,
                    inner.right(),
                );
            }
            Row::Node {
                node, depth, open, ..
            } => {
                if index == cursor {
                    pen.highlight(rect, y, explore.focus == Focus::Tree);
                }
                let (glyphs, base) = tree_line(node, *open, &palette);
                let x = inner.x + (*depth as i32) * 2;
                let room = usize::try_from(inner.right() - 2 - x).unwrap_or(0);
                pen.line(x, y, &text::truncate(glyphs, room), base, inner.right() - 2);
                let (mark, color) = seen_mark(node.seen, &palette);
                pen.put(inner.right() - 1, y, mark, color, Style::default());
            }
        }
    }
    if scroll > 0 {
        pen.put(
            rect.right() - 1,
            inner.y,
            '↑',
            palette.dim,
            Style::default(),
        );
    }
    if scroll + visible < rows.len() {
        pen.put(
            rect.right() - 1,
            inner.y + inner.h - 1,
            '↓',
            palette.dim,
            Style::default(),
        );
    }
}

fn detail_panel(pen: &mut Pen, rect: Rect, explore: &mut Explore) {
    let palette = pen.palette;
    let inner = rect.inner();
    let width = usize::try_from(inner.w).unwrap_or(0).clamp(1, MEASURE);
    let Some(node) = explore.selected() else {
        pen.frame(rect, &[], false);
        return;
    };
    let focused = explore.focus == Focus::Actions;
    pen.frame(rect, &text::glyphs(&node.name), focused);

    let description = text::wrap(&node.description, width);
    let result: Vec<Vec<Glyph>> = explore
        .result
        .iter()
        .flat_map(|paragraph| text::wrap(paragraph, width))
        .collect();

    // Top down: description, a rule, the actions, a rule, the result. The description takes
    // what it needs (within reason) and whatever is left over stays empty at the bottom.
    let height = inner.h;
    let action_rows = (node.actions.len().max(1) as i32).min((height / 3).max(1));
    let result_rows = (result.len() as i32).clamp(2, 8).min((height / 3).max(1));
    let description_rows = (description.len() as i32)
        .max(3)
        .min((height - action_rows - result_rows - 2).max(1));
    let actions_rule = inner.y + description_rows;
    let result_rule = actions_rule + 1 + action_rows;

    let max_scroll = description.len().saturating_sub(description_rows as usize);
    let scroll = explore.detail_scroll.min(max_scroll);
    let mut budget = explore
        .motion
        .reveal
        .map_or(usize::MAX, |shown| shown as usize);
    for (row, line) in description
        .iter()
        .skip(scroll)
        .take(description_rows as usize)
        .enumerate()
    {
        let shown = line.len().min(budget);
        budget -= shown;
        pen.line(
            inner.x,
            inner.y + row as i32,
            &line[..shown],
            palette.text,
            inner.right(),
        );
    }
    if scroll > 0 {
        pen.put(
            rect.right() - 1,
            inner.y,
            '↑',
            palette.dim,
            Style::default(),
        );
    }
    if scroll < max_scroll {
        pen.put(
            rect.right() - 1,
            actions_rule - 1,
            '↓',
            palette.dim,
            Style::default(),
        );
    }

    pen.divider(rect, actions_rule, &explore.labels.actions);
    let first = explore.action.saturating_sub(action_rows as usize - 1);
    for (row, (index, action)) in node
        .actions
        .iter()
        .enumerate()
        .skip(first)
        .take(action_rows as usize)
        .enumerate()
    {
        let y = actions_rule + 1 + row as i32;
        let chosen = index == explore.action;
        if chosen {
            pen.highlight(rect, y, focused);
        }
        let color = if chosen && focused {
            palette.accent
        } else {
            palette.text
        };
        pen.text(
            inner.x,
            y,
            if chosen { "▶" } else { " " },
            palette.accent,
            inner.right(),
        );
        pen.text(inner.x + 2, y, &action.label, color, inner.right());
    }
    if node.actions.is_empty() {
        let aside = Style {
            fg: Some(palette.dim),
            italic: true,
            ..Style::default()
        };
        let line = match &node.locked {
            Some(hint) => {
                let mut line = text::plain("⚿ ", aside);
                line.extend(text::glyphs(hint).into_iter().map(|(c, _)| (c, aside)));
                line
            }
            None => text::plain(&explore.labels.nothing_to_do, aside),
        };
        pen.line(
            inner.x,
            actions_rule + 1,
            &text::truncate(line, width),
            palette.dim,
            inner.right(),
        );
    }

    pen.divider(rect, result_rule, "");
    let skip = result.len().saturating_sub(result_rows as usize);
    for (row, line) in result.iter().skip(skip).enumerate() {
        pen.line(
            inner.x,
            result_rule + 1 + row as i32,
            line,
            palette.text,
            inner.right(),
        );
    }

    explore.detail_scroll = scroll;
}

fn trackers_line(trackers: &[TrackerCount], palette: &Palette) -> Vec<Glyph> {
    let dim = Style {
        fg: Some(palette.dim),
        ..Style::default()
    };
    let mut line = Vec::new();
    for tracker in trackers {
        if !line.is_empty() {
            line.extend(text::plain("  ", dim));
        }
        line.extend(text::plain(&format!("{} ", tracker.name), dim));
        line.extend(accent_glyphs(
            &format!("{}/{}", tracker.found, tracker.total),
            palette,
        ));
    }
    line
}

fn footer(pen: &mut Pen, y: i32, explore: &Explore) {
    let palette = pen.palette;
    let width = i32::from(pen.canvas.width());
    let hints = if explore.journal.is_some() {
        "↑↓ scroll  j close"
    } else if explore.focus == Focus::Actions {
        "↑↓ choose  ⏎ do  ← back  j journal  q quit"
    } else {
        "↑↓ move  ←→ fold  ⏎ open/do  tab actions  j journal  q quit"
    };
    let trackers = trackers_line(&explore.view.trackers, &palette);
    let right = width - 1 - text::width(&trackers) as i32;
    match &explore.trouble {
        Some(trouble) => pen.text(1, y, trouble, Rgb::new(0xd9, 0x53, 0x4a), right - 2),
        None => pen.text(1, y, hints, palette.dim, right - 2),
    };
    pen.line(right.max(1), y, &trackers, palette.dim, width);
}

fn bar(found: usize, total: usize, cells: usize) -> String {
    let filled = if total == 0 {
        0
    } else {
        (found * cells).div_ceil(total).min(cells)
    };
    format!("{}{}", "█".repeat(filled), "░".repeat(cells - filled))
}

/// The journal as lines of text: overall progress, then each region and its visited places.
pub fn journal_lines(
    journal: &Journal,
    seen_label: &str,
    palette: &Palette,
    width: usize,
) -> Vec<Vec<Glyph>> {
    let plain = Style::default();
    let dim = Style {
        fg: Some(palette.dim),
        ..plain
    };
    let accent = Style {
        fg: Some(palette.accent),
        ..plain
    };
    let mut lines: Vec<Vec<Glyph>> = Vec::new();
    let name_width = journal
        .trackers
        .iter()
        .map(|t| t.name.chars().count())
        .chain([seen_label.chars().count()])
        .max()
        .unwrap_or(0);
    let mut progress = |name: &str, found: usize, total: usize| {
        let mut line = text::plain(&format!("{name:<name_width$}  "), plain);
        line.extend(text::plain(&bar(found, total, 20), accent));
        line.extend(text::plain(&format!("  {found}/{total}"), dim));
        lines.push(line);
    };
    for tracker in &journal.trackers {
        progress(&tracker.name, tracker.found, tracker.total);
    }
    progress(seen_label, journal.seen, journal.total);

    for region in &journal.regions {
        lines.push(Vec::new());
        let seen: usize = region.spaces.iter().map(|s| s.seen).sum();
        let total: usize = region.spaces.iter().map(|s| s.total).sum();
        let mut heading: Vec<Glyph> = text::glyphs(&region.name)
            .into_iter()
            .map(|(c, s)| {
                (
                    c,
                    Style {
                        bold: true,
                        fg: s.fg.or(accent.fg),
                        ..s
                    },
                )
            })
            .collect();
        heading.extend(text::plain(&format!("  {seen}/{total}"), dim));
        lines.push(heading);
        let describe = |spans: &[Span], indent: &str, lines: &mut Vec<Vec<Glyph>>| {
            for wrapped in text::wrap(spans, width.saturating_sub(indent.len()).max(10)) {
                let mut line = text::plain(indent, dim);
                line.extend(wrapped.into_iter().map(|(c, s)| {
                    (
                        c,
                        Style {
                            fg: s.fg.or(dim.fg),
                            ..s
                        },
                    )
                }));
                lines.push(line);
            }
        };
        describe(&region.description, "", &mut lines);
        for space in &region.spaces {
            let complete = space.seen == space.total;
            let mark = if complete {
                ("✓ ", dim)
            } else {
                ("◐ ", accent)
            };
            let mut line = text::plain("  ", plain);
            line.extend(text::plain(mark.0, mark.1));
            line.extend(text::glyphs(&space.name));
            line.extend(text::plain(
                &format!("  {}/{}", space.seen, space.total),
                dim,
            ));
            for (flagged, sign) in [
                (space.secret, "  ⚿"),
                (space.wonder, "  ✶"),
                (space.here, "  ◆"),
            ] {
                if flagged {
                    line.extend(text::plain(sign, accent));
                }
            }
            lines.push(line);
            describe(&space.description, "      ", &mut lines);
        }
    }
    lines
}

fn journal_overlay(pen: &mut Pen, explore: &mut Explore) {
    let palette = pen.palette;
    let (width, height) = (
        i32::from(pen.canvas.width()),
        i32::from(pen.canvas.height()),
    );
    let rect = Rect {
        x: (width / 10).min(8),
        y: 1,
        w: width - 2 * (width / 10).min(8),
        h: (height - 3).max(3),
    };
    let inner = rect.inner();
    for y in rect.y..rect.y + rect.h {
        pen.blank(
            rect.x,
            rect.right(),
            y,
            Some(palette.bg.lerp(palette.border, 0.25)),
        );
    }
    let title = accent_glyphs(&explore.labels.journal, &palette);
    pen.frame(rect, &title, true);
    let Some((journal, scroll)) = &mut explore.journal else {
        return;
    };
    let lines = journal_lines(
        journal,
        &explore.labels.seen,
        &palette,
        usize::try_from(inner.w).unwrap_or(0),
    );
    let visible = usize::try_from(inner.h).unwrap_or(0);
    *scroll = (*scroll).min(lines.len().saturating_sub(visible));
    for (row, line) in lines.iter().skip(*scroll).take(visible).enumerate() {
        pen.line(
            inner.x,
            inner.y + row as i32,
            line,
            palette.text,
            inner.right(),
        );
    }
    if *scroll + visible < lines.len() {
        pen.put(
            rect.right() - 1,
            inner.y + inner.h - 1,
            '↓',
            palette.dim,
            Style::default(),
        );
    }
}

/// Art from the pack, drawn faintly along the bottom, behind the panels' text.
fn backdrop(canvas: &mut Canvas, rows: &[String], palette: &Palette, floor: i32) {
    let color = palette.bg.lerp(palette.border, 0.6);
    let widest = rows.iter().map(|r| r.chars().count()).max().unwrap_or(0) as i32;
    let left = (i32::from(canvas.width()) - widest) / 2;
    let top = floor - rows.len() as i32;
    for (dy, row) in rows.iter().enumerate() {
        for (dx, ch) in row.chars().enumerate() {
            if ch != ' ' {
                canvas.put(left + dx as i32, top + dy as i32, ch, color, false, false);
            }
        }
    }
}

/// Draws one frame of the explore screen.
pub fn explore(canvas: &mut Canvas, explore: &mut Explore) {
    let palette = explore.motion.palette;
    canvas.clear(palette.bg);
    let layout = layout(canvas.width(), canvas.height());
    let animated = explore.motion.enabled;

    if animated {
        explore.motion.ambience.fields(canvas);
    }
    backdrop(canvas, &explore.view.backdrop, &palette, layout.footer - 1);
    if animated {
        if let Some(color) = explore.motion.sparks.take() {
            let from = layout.detail;
            let (x, y) = (from.x + from.w / 2, from.y + from.h * 2 / 3);
            explore
                .motion
                .ambience
                .sparks(x as f32, y as f32, color, 18);
        }
        explore.motion.ambience.particles(canvas);
    }

    let shake = explore.motion.shots.shake();
    let shifted = |rect: Rect| Rect {
        x: rect.x + shake,
        ..rect
    };
    let mut pen = Pen {
        canvas,
        palette,
        time: explore.motion.time,
        fade: if animated {
            0.15 + 0.85 * explore.motion.fade
        } else {
            1.0
        },
    };
    tree_panel(&mut pen, shifted(layout.tree), explore);
    detail_panel(&mut pen, shifted(layout.detail), explore);
    pen.fade = 1.0;
    footer(&mut pen, layout.footer, explore);
    if explore.journal.is_some() {
        journal_overlay(&mut pen, explore);
    }

    if animated {
        explore.motion.ambience.flicker(canvas);
        explore.motion.shots.tint(canvas, &palette);
    }
}

/// Draws a centred menu: a title, a line under it, and a list with one entry highlighted.
pub fn menu(
    pen: &mut Pen,
    title: &str,
    subtitle: &str,
    entries: &[(String, String)],
    chosen: usize,
) {
    let palette = pen.palette;
    let (width, height) = (
        i32::from(pen.canvas.width()),
        i32::from(pen.canvas.height()),
    );
    let w = (width - 4).clamp(10, 72);
    let text_width = usize::try_from(w - 4).unwrap_or(1);
    let intro = text::wrap(&[Span::plain(subtitle)], text_width);
    let h = (intro.len() as i32 + entries.len() as i32 * 2 + 4)
        .min(height - 1)
        .max(3);
    let rect = Rect {
        x: (width - w) / 2,
        y: ((height - h) / 2).max(0),
        w,
        h,
    };
    let inner = rect.inner();
    pen.frame(rect, &accent_glyphs(title, &palette), true);
    let mut y = inner.y;
    for line in &intro {
        pen.line(inner.x, y, line, palette.dim, inner.right());
        y += 1;
    }
    y += 1;
    for (index, (name, about)) in entries.iter().enumerate() {
        if y + 1 >= rect.y + rect.h {
            break;
        }
        if index == chosen {
            pen.highlight(rect, y, true);
        }
        pen.text(
            inner.x,
            y,
            if index == chosen { "▶" } else { " " },
            palette.accent,
            inner.right(),
        );
        let color = if index == chosen {
            palette.accent
        } else {
            palette.text
        };
        pen.text(inner.x + 2, y, name, color, inner.right());
        let about = text::truncate(
            text::plain(about, Style::default()),
            text_width.saturating_sub(2),
        );
        pen.line(inner.x + 2, y + 1, &about, palette.dim, inner.right());
        y += 2;
    }
    pen.text(
        1,
        height - 1,
        "↑↓ choose   ⏎ select   q quit",
        palette.dim,
        width,
    );
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn wide_screens_put_the_panels_side_by_side() {
        let l = layout(120, 40);
        assert_eq!((l.tree.x, l.tree.y, l.tree.h), (0, 0, 39));
        assert_eq!(l.detail.x, l.tree.w);
        assert_eq!(l.tree.w + l.detail.w, 120);
        assert_eq!(l.footer, 39);
        assert_eq!(
            layout(200, 40).tree.w,
            48,
            "the tree never grows past its cap"
        );
    }

    #[test]
    fn narrow_screens_stack_them() {
        let l = layout(60, 30);
        assert_eq!((l.tree.w, l.detail.w), (60, 60));
        assert_eq!(l.detail.y, l.tree.h);
        assert_eq!(l.tree.h + l.detail.h, 29);
    }

    #[test]
    fn tiny_screens_do_not_underflow() {
        for (w, h) in [(0, 0), (1, 1), (5, 2), (79, 3)] {
            let l = layout(w, h);
            assert!(l.tree.h >= 0 && l.detail.h >= 0 && l.detail.w >= 0);
        }
    }

    #[test]
    fn progress_bars_fill_in_proportion() {
        assert_eq!(bar(0, 10, 10), "░░░░░░░░░░");
        assert_eq!(bar(5, 10, 10), "█████░░░░░");
        assert_eq!(bar(1, 100, 10), "█░░░░░░░░░", "any progress shows");
        assert_eq!(bar(10, 10, 10), "██████████");
        assert_eq!(bar(0, 0, 4), "░░░░");
    }
}
