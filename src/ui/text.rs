//! Laying styled text out in lines.

use unicode_width::UnicodeWidthChar;

use crate::world::{Span, Style};

/// One character with the style it is drawn in.
pub type Glyph = (char, Style);

pub fn glyphs(spans: &[Span]) -> Vec<Glyph> {
    spans
        .iter()
        .flat_map(|span| span.text.chars().map(|c| (c, span.style)))
        .collect()
}

pub fn plain(text: &str, style: Style) -> Vec<Glyph> {
    text.chars().map(|c| (c, style)).collect()
}

pub fn width(line: &[Glyph]) -> usize {
    line.iter().map(|(c, _)| c.width().unwrap_or(0)).sum()
}

/// Cuts a line to at most `max` cells, ending it with an ellipsis when something was dropped.
pub fn truncate(mut line: Vec<Glyph>, max: usize) -> Vec<Glyph> {
    if width(&line) <= max {
        return line;
    }
    let style = line.last().map(|(_, s)| *s).unwrap_or_default();
    while !line.is_empty() && width(&line) + 1 > max {
        line.pop();
    }
    if max > 0 {
        line.push(('…', style));
    }
    line
}

/// Word-wraps styled text to `max` cells per line. Newlines start a new line; a word longer
/// than a line is split.
pub fn wrap(spans: &[Span], max: usize) -> Vec<Vec<Glyph>> {
    let max = max.max(1);
    let mut lines: Vec<Vec<Glyph>> = Vec::new();
    for paragraph in glyphs(spans).split(|(c, _)| *c == '\n') {
        let mut line: Vec<Glyph> = Vec::new();
        for word in paragraph.split_inclusive(|(c, _)| *c == ' ') {
            let trimmed = match word.split_last() {
                Some(((' ', _), rest)) => rest,
                _ => word,
            };
            if !line.is_empty() && width(&line) + width(trimmed) > max {
                while matches!(line.last(), Some((' ', _))) {
                    line.pop();
                }
                lines.push(std::mem::take(&mut line));
            }
            for glyph in word {
                if width(&line) + glyph.0.width().unwrap_or(0) > max {
                    if glyph.0 == ' ' {
                        continue;
                    }
                    lines.push(std::mem::take(&mut line));
                }
                line.push(*glyph);
            }
        }
        while matches!(line.last(), Some((' ', _))) {
            line.pop();
        }
        lines.push(line);
    }
    if spans.iter().all(|s| s.text.is_empty()) {
        lines.clear();
    }
    lines
}

#[cfg(test)]
mod tests {
    use super::*;

    fn lines(text: &str, max: usize) -> Vec<String> {
        wrap(&[Span::plain(text)], max)
            .iter()
            .map(|line| line.iter().map(|(c, _)| *c).collect())
            .collect()
    }

    #[test]
    fn wraps_at_word_boundaries() {
        assert_eq!(lines("the quick brown fox", 10), ["the quick", "brown fox"]);
        assert_eq!(lines("the quick brown fox", 9), ["the quick", "brown fox"]);
        assert_eq!(lines("a b", 80), ["a b"]);
    }

    #[test]
    fn splits_words_longer_than_a_line_and_keeps_newlines() {
        assert_eq!(lines("abcdefgh", 3), ["abc", "def", "gh"]);
        assert_eq!(lines("one\n\ntwo", 10), ["one", "", "two"]);
        assert!(lines("", 10).is_empty());
    }

    #[test]
    fn counts_wide_characters_as_two_cells() {
        assert_eq!(lines("日本語 日本語", 6), ["日本語", "日本語"]);
        assert_eq!(lines("日本語", 4), ["日本", "語"]);
    }

    #[test]
    fn styles_survive_wrapping() {
        let bold = Style {
            bold: true,
            ..Style::default()
        };
        let spans = [
            Span::plain("plain "),
            Span {
                text: "bold".into(),
                style: bold,
            },
        ];
        let wrapped = wrap(&spans, 6);
        assert_eq!(wrapped.len(), 2);
        assert!(wrapped[1].iter().all(|(_, s)| s.bold));
    }

    #[test]
    fn truncates_with_an_ellipsis() {
        let cut = truncate(plain("hello world", Style::default()), 6);
        assert_eq!(cut.iter().map(|(c, _)| *c).collect::<String>(), "hello…");
        assert_eq!(truncate(plain("hi", Style::default()), 6).len(), 2);
    }
}
