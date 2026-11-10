//! The inline markup of pack text: `{gold}star lens{/}`, `{b}bold{/}`, `{shimmer}alive{/}`.

use std::collections::HashMap;

use crate::world::{Rgb, Span, Style, TextFx};

/// The colour names a pack defines, on top of the built-in ones.
#[derive(Clone, Debug, Default)]
pub struct Theme(HashMap<String, Rgb>);

impl Theme {
    pub fn insert(&mut self, name: String, color: Rgb) {
        self.0.insert(name, color);
    }

    pub fn color(&self, name: &str) -> Option<Rgb> {
        self.0.get(name).copied().or_else(|| Rgb::parse(name))
    }
}

/// Parses marked-up text into styled spans.
///
/// `{tag}` opens a style and `{/}` closes the most recent one; styles nest. A tag is a theme
/// colour, a built-in colour name, `#rrggbb`, `b`, `i`, or a text effect. `{{` is a literal brace.
pub fn parse(source: &str, theme: &Theme) -> Result<Vec<Span>, String> {
    let mut spans: Vec<Span> = Vec::new();
    let mut stack = vec![Style::default()];
    let mut current = String::new();
    let mut flush = |text: &mut String, style: Style| {
        if !text.is_empty() {
            spans.push(Span {
                text: std::mem::take(text),
                style,
            });
        }
    };

    let mut rest = source;
    while let Some(open) = rest.find('{') {
        current.push_str(&rest[..open]);
        rest = &rest[open + 1..];
        if let Some(after) = rest.strip_prefix('{') {
            current.push('{');
            rest = after;
            continue;
        }
        let close = rest.find('}').ok_or_else(|| {
            format!("unclosed '{{' in \"{source}\" (write '{{{{' for a literal brace)")
        })?;
        let tag = rest[..close].trim();
        rest = &rest[close + 1..];

        let top = *stack.last().expect("the base style is never popped");
        flush(&mut current, top);
        if tag == "/" {
            if stack.len() == 1 {
                return Err(format!("'{{/}}' closes nothing in \"{source}\""));
            }
            stack.pop();
        } else {
            stack.push(
                apply(tag, top, theme)
                    .ok_or_else(|| format!("unknown markup tag '{{{tag}}}' in \"{source}\""))?,
            );
        }
    }
    current.push_str(rest);
    let top = *stack.last().expect("the base style is never popped");
    flush(&mut current, top);
    Ok(spans)
}

fn apply(tag: &str, mut style: Style, theme: &Theme) -> Option<Style> {
    match tag {
        "b" => style.bold = true,
        "i" => style.italic = true,
        _ => {
            if let Some(fx) = TextFx::parse(tag) {
                style.fx = Some(fx);
            } else {
                style.fg = Some(theme.color(tag)?);
            }
        }
    }
    Some(style)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::world::plain_text;

    fn theme() -> Theme {
        let mut theme = Theme::default();
        theme.insert("gold".into(), Rgb::new(1, 2, 3));
        theme
    }

    #[test]
    fn plain_text_is_one_span() {
        assert_eq!(parse("hello", &theme()).unwrap(), [Span::plain("hello")]);
        assert!(parse("", &theme()).unwrap().is_empty());
    }

    #[test]
    fn tags_style_their_content_and_nest() {
        let spans = parse("a {gold}b {i}c{/} d{/} e", &theme()).unwrap();
        assert_eq!(plain_text(&spans), "a b c d e");
        assert_eq!(spans.len(), 5);
        assert_eq!(spans[1].style.fg, Some(Rgb::new(1, 2, 3)));
        assert!(spans[2].style.italic && spans[2].style.fg == Some(Rgb::new(1, 2, 3)));
        assert!(!spans[3].style.italic);
        assert_eq!(spans[4].style, Style::default());
    }

    #[test]
    fn understands_effects_hex_and_builtin_names() {
        let spans = parse("{shimmer}x{/}{#ff0000}y{/}{red}z{/}{b}w", &theme()).unwrap();
        assert_eq!(spans[0].style.fx, Some(TextFx::Shimmer));
        assert_eq!(spans[1].style.fg, Some(Rgb::new(255, 0, 0)));
        assert!(spans[2].style.fg.is_some());
        assert!(spans[3].style.bold, "an unclosed tag runs to the end");
    }

    #[test]
    fn double_brace_is_literal() {
        assert_eq!(plain_text(&parse("{{x} }", &theme()).unwrap()), "{x} }");
    }

    #[test]
    fn rejects_mistakes() {
        assert!(
            parse("{nope}x{/}", &theme())
                .unwrap_err()
                .contains("unknown markup tag")
        );
        assert!(
            parse("x{/}", &theme())
                .unwrap_err()
                .contains("closes nothing")
        );
        assert!(parse("x{gold", &theme()).unwrap_err().contains("unclosed"));
    }
}
