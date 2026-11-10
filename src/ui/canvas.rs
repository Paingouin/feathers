//! An in-memory grid of coloured cells, and the code that sends only what changed to the terminal.

use std::io::{self, Write};

use crossterm::cursor::MoveTo;
use crossterm::queue;
use crossterm::style::{
    Attribute, Color, Print, SetAttribute, SetBackgroundColor, SetForegroundColor,
};
use unicode_width::UnicodeWidthChar;

use crate::world::Rgb;

/// Stands in the cell to the right of a double-width character.
const CONTINUATION: char = '\0';

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Cell {
    pub ch: char,
    pub fg: Rgb,
    pub bg: Rgb,
    pub bold: bool,
    pub italic: bool,
}

/// How many colours the terminal can show.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ColorDepth {
    TrueColor,
    Indexed256,
}

impl ColorDepth {
    /// Truecolor terminals announce themselves through `COLORTERM`.
    pub fn detect() -> Self {
        match std::env::var("COLORTERM") {
            Ok(value) if value.contains("truecolor") || value.contains("24bit") => Self::TrueColor,
            _ => Self::Indexed256,
        }
    }

    fn color(self, rgb: Rgb) -> Color {
        match self {
            Self::TrueColor => Color::Rgb {
                r: rgb.r,
                g: rgb.g,
                b: rgb.b,
            },
            Self::Indexed256 => Color::AnsiValue(to_256(rgb)),
        }
    }
}

/// The closest entry of the xterm 256-colour palette: the 6×6×6 cube or the grey ramp.
pub fn to_256(rgb: Rgb) -> u8 {
    const LEVELS: [u8; 6] = [0, 95, 135, 175, 215, 255];
    let nearest = |v: u8| {
        (0..6u8)
            .min_by_key(|&i| (i32::from(LEVELS[usize::from(i)]) - i32::from(v)).abs())
            .unwrap_or(0)
    };
    let (r, g, b) = (nearest(rgb.r), nearest(rgb.g), nearest(rgb.b));
    let cube = Rgb::new(
        LEVELS[usize::from(r)],
        LEVELS[usize::from(g)],
        LEVELS[usize::from(b)],
    );
    let average = (u16::from(rgb.r) + u16::from(rgb.g) + u16::from(rgb.b)) / 3;
    let step = ((average.saturating_sub(8) + 5) / 10).min(23) as u8;
    let level = 8 + 10 * step;
    let grey = Rgb::new(level, level, level);
    let distance = |c: Rgb| {
        let d = |a: u8, b: u8| (i32::from(a) - i32::from(b)).pow(2);
        d(c.r, rgb.r) + d(c.g, rgb.g) + d(c.b, rgb.b)
    };
    if distance(grey) < distance(cube) {
        232 + step
    } else {
        16 + 36 * r + 6 * g + b
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Canvas {
    width: u16,
    height: u16,
    cells: Vec<Cell>,
}

impl Canvas {
    pub fn new(width: u16, height: u16, bg: Rgb) -> Self {
        let blank = Cell {
            ch: ' ',
            fg: bg,
            bg,
            bold: false,
            italic: false,
        };
        Self {
            width,
            height,
            cells: vec![blank; usize::from(width) * usize::from(height)],
        }
    }

    pub fn width(&self) -> u16 {
        self.width
    }

    pub fn height(&self) -> u16 {
        self.height
    }

    pub fn clear(&mut self, bg: Rgb) {
        *self = Self::new(self.width, self.height, bg);
    }

    fn index(&self, x: i32, y: i32) -> Option<usize> {
        let inside = x >= 0 && y >= 0 && x < i32::from(self.width) && y < i32::from(self.height);
        inside.then(|| y as usize * usize::from(self.width) + x as usize)
    }

    pub fn cell(&self, x: i32, y: i32) -> Option<&Cell> {
        self.index(x, y).map(|i| &self.cells[i])
    }

    pub fn cell_mut(&mut self, x: i32, y: i32) -> Option<&mut Cell> {
        self.index(x, y).map(|i| &mut self.cells[i])
    }

    pub fn cells_mut(&mut self) -> &mut [Cell] {
        &mut self.cells
    }

    /// Puts a character, keeping the cell's background. Returns how many cells it took (0 to 2).
    pub fn put(&mut self, x: i32, y: i32, ch: char, fg: Rgb, bold: bool, italic: bool) -> i32 {
        let width = ch.width().unwrap_or(0) as i32;
        if width == 0 {
            return 0;
        }
        if width == 2 && self.index(x + 1, y).is_none() {
            return width;
        }
        if let Some(cell) = self.cell_mut(x, y) {
            cell.ch = ch;
            cell.fg = fg;
            cell.bold = bold;
            cell.italic = italic;
        }
        if width == 2
            && let Some(next) = self.cell_mut(x + 1, y)
        {
            next.ch = CONTINUATION;
        }
        width
    }

    /// Prints plain text on one row, clipped at `max_x` (exclusive). Returns the next column.
    #[cfg(test)]
    pub fn print(&mut self, x: i32, y: i32, text: &str, fg: Rgb, max_x: i32) -> i32 {
        let mut column = x;
        for ch in text.chars() {
            let width = ch.width().unwrap_or(0) as i32;
            if column + width > max_x {
                break;
            }
            column += self.put(column, y, ch, fg, false, false);
        }
        column
    }

    /// Writes to `out` whatever differs from `previous` (everything, when there is none or the
    /// size changed). An unchanged frame writes nothing.
    pub fn flush(
        &self,
        previous: Option<&Canvas>,
        depth: ColorDepth,
        out: &mut impl Write,
    ) -> io::Result<()> {
        let previous = previous.filter(|p| p.width == self.width && p.height == self.height);
        let mut pen: Option<(Rgb, Rgb, bool, bool)> = None;
        let mut cursor: Option<(u16, u16)> = None;
        for y in 0..self.height {
            for x in 0..self.width {
                let i = usize::from(y) * usize::from(self.width) + usize::from(x);
                let cell = self.cells[i];
                if cell.ch == CONTINUATION || previous.is_some_and(|p| p.cells[i] == cell) {
                    continue;
                }
                if cursor != Some((x, y)) {
                    queue!(out, MoveTo(x, y))?;
                }
                let (fg, bg, bold, italic) =
                    pen.unwrap_or((cell.bg, cell.fg, !cell.bold, !cell.italic));
                if pen.is_none() || fg != cell.fg {
                    queue!(out, SetForegroundColor(depth.color(cell.fg)))?;
                }
                if pen.is_none() || bg != cell.bg {
                    queue!(out, SetBackgroundColor(depth.color(cell.bg)))?;
                }
                if pen.is_none() || bold != cell.bold {
                    let attribute = if cell.bold {
                        Attribute::Bold
                    } else {
                        Attribute::NormalIntensity
                    };
                    queue!(out, SetAttribute(attribute))?;
                }
                if pen.is_none() || italic != cell.italic {
                    let attribute = if cell.italic {
                        Attribute::Italic
                    } else {
                        Attribute::NoItalic
                    };
                    queue!(out, SetAttribute(attribute))?;
                }
                pen = Some((cell.fg, cell.bg, cell.bold, cell.italic));
                queue!(out, Print(cell.ch))?;
                let advance = cell.ch.width().unwrap_or(1).max(1) as u16;
                cursor = Some((x + advance, y));
            }
        }
        if pen.is_some() {
            out.flush()?;
        }
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    const BG: Rgb = Rgb::new(0, 0, 0);
    const FG: Rgb = Rgb::new(200, 200, 200);

    fn flushed(canvas: &Canvas, previous: Option<&Canvas>) -> String {
        let mut out = Vec::new();
        canvas
            .flush(previous, ColorDepth::TrueColor, &mut out)
            .unwrap();
        String::from_utf8(out).unwrap()
    }

    #[test]
    fn an_unchanged_frame_writes_nothing() {
        let mut canvas = Canvas::new(10, 3, BG);
        canvas.print(1, 1, "hello", FG, 10);
        assert!(flushed(&canvas, None).contains("hello"));
        assert_eq!(flushed(&canvas, Some(&canvas.clone())), "");
    }

    #[test]
    fn only_changed_cells_are_written() {
        let mut before = Canvas::new(10, 3, BG);
        before.print(0, 0, "hello", FG, 10);
        let mut after = before.clone();
        after.print(0, 0, "hallo", FG, 10);
        let out = flushed(&after, Some(&before));
        assert!(out.ends_with('a'), "{out:?}");
        assert!(!out.contains('h') || out.contains("\u{1b}["), "{out:?}");
        assert_eq!(
            out.matches(|c: char| c.is_ascii_lowercase() && c != 'm')
                .count(),
            1
        );
    }

    #[test]
    fn a_resize_redraws_everything() {
        let small = Canvas::new(4, 1, BG);
        let mut big = Canvas::new(5, 1, BG);
        big.print(0, 0, "abcde", FG, 5);
        assert!(flushed(&big, Some(&small)).contains("abcde"));
    }

    #[test]
    fn text_is_clipped_and_wide_characters_take_two_cells() {
        let mut canvas = Canvas::new(6, 1, BG);
        assert_eq!(canvas.print(0, 0, "日本語", FG, 5), 4);
        assert_eq!(canvas.cell(0, 0).unwrap().ch, '日');
        assert_eq!(canvas.cell(1, 0).unwrap().ch, CONTINUATION);
        assert_eq!(canvas.cell(4, 0).unwrap().ch, ' ');
        assert_eq!(canvas.put(-1, 0, 'x', FG, false, false), 1);
        assert_eq!(canvas.put(9, 9, 'x', FG, false, false), 1);
    }

    #[test]
    fn maps_colours_to_the_256_palette() {
        assert_eq!(to_256(Rgb::new(0, 0, 0)), 16);
        assert_eq!(to_256(Rgb::new(255, 255, 255)), 231);
        assert_eq!(to_256(Rgb::new(255, 0, 0)), 196);
        assert_eq!(to_256(Rgb::new(128, 128, 128)), 244);
    }
}
