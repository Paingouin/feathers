//! Colours and styled text. Plain data: the UI decides how to draw it.

use super::id::HookId;

/// A 24-bit colour.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub struct Rgb {
    pub r: u8,
    pub g: u8,
    pub b: u8,
}

impl Rgb {
    pub const fn new(r: u8, g: u8, b: u8) -> Self {
        Self { r, g, b }
    }

    /// Parses `#rrggbb` or `#rgb`.
    pub fn from_hex(text: &str) -> Option<Self> {
        let hex = text.strip_prefix('#')?;
        if !hex.is_ascii() {
            return None;
        }
        let channel = |s: &str| u8::from_str_radix(s, 16).ok();
        match hex.len() {
            6 => Some(Self::new(
                channel(&hex[0..2])?,
                channel(&hex[2..4])?,
                channel(&hex[4..6])?,
            )),
            3 => {
                let wide = |s: &str| channel(s).map(|v| v * 17);
                Some(Self::new(
                    wide(&hex[0..1])?,
                    wide(&hex[1..2])?,
                    wide(&hex[2..3])?,
                ))
            }
            _ => None,
        }
    }

    /// A small set of colour names every pack can use without declaring a theme.
    pub fn named(name: &str) -> Option<Self> {
        Some(match name {
            "black" => Self::new(0x10, 0x10, 0x12),
            "white" => Self::new(0xf2, 0xf0, 0xe6),
            "grey" | "gray" => Self::new(0x8a, 0x8a, 0x8a),
            "red" => Self::new(0xd9, 0x4a, 0x4a),
            "orange" => Self::new(0xe8, 0x94, 0x3a),
            "yellow" => Self::new(0xe6, 0xc8, 0x4c),
            "green" => Self::new(0x6f, 0xb8, 0x5a),
            "cyan" => Self::new(0x5c, 0xc4, 0xc4),
            "blue" => Self::new(0x5a, 0x8f, 0xd6),
            "magenta" | "purple" => Self::new(0xb8, 0x6f, 0xd0),
            "pink" => Self::new(0xe8, 0x8f, 0xb4),
            "brown" => Self::new(0x9a, 0x6b, 0x3f),
            _ => return None,
        })
    }

    /// Parses a hex colour or a built-in colour name.
    pub fn parse(text: &str) -> Option<Self> {
        Self::from_hex(text).or_else(|| Self::named(text))
    }

    /// Linear blend: `t = 0` is `self`, `t = 1` is `other`.
    pub fn lerp(self, other: Self, t: f32) -> Self {
        let t = t.clamp(0.0, 1.0);
        let mix = |a: u8, b: u8| (f32::from(a) + (f32::from(b) - f32::from(a)) * t).round() as u8;
        Self::new(
            mix(self.r, other.r),
            mix(self.g, other.g),
            mix(self.b, other.b),
        )
    }
}

/// A subtle animation applied to a run of text.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum TextFx {
    Shimmer,
    Wave,
    Flicker,
    Glow,
}

impl TextFx {
    pub fn parse(name: &str) -> Option<Self> {
        Some(match name {
            "shimmer" => Self::Shimmer,
            "wave" => Self::Wave,
            "flicker" => Self::Flicker,
            "glow" => Self::Glow,
            _ => return None,
        })
    }
}

#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct Style {
    pub fg: Option<Rgb>,
    pub bold: bool,
    pub italic: bool,
    pub fx: Option<TextFx>,
}

/// A run of text sharing one style.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Span {
    pub text: String,
    pub style: Style,
}

impl Span {
    pub fn plain(text: impl Into<String>) -> Self {
        Self {
            text: text.into(),
            style: Style::default(),
        }
    }
}

/// Concatenates spans, dropping their styling.
pub fn plain_text(spans: &[Span]) -> String {
    spans.iter().map(|s| s.text.as_str()).collect()
}

/// Text authored in a pack: either fixed, or produced by a script each time it is shown.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Text {
    Static(Vec<Span>),
    Script(HookId),
}

impl Text {
    pub fn empty() -> Self {
        Self::Static(Vec::new())
    }

    pub fn plain(text: impl Into<String>) -> Self {
        Self::Static(vec![Span::plain(text)])
    }

    /// True for fixed text with no visible characters. Scripted text is never considered blank.
    pub fn is_blank(&self) -> bool {
        match self {
            Self::Static(spans) => spans.iter().all(|s| s.text.trim().is_empty()),
            Self::Script(_) => false,
        }
    }
}

/// The colours a region or space is drawn with.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Palette {
    pub bg: Rgb,
    pub text: Rgb,
    pub dim: Rgb,
    pub accent: Rgb,
    pub border: Rgb,
}

impl Default for Palette {
    fn default() -> Self {
        Self {
            bg: Rgb::new(0x0e, 0x0f, 0x14),
            text: Rgb::new(0xc8, 0xc4, 0xb8),
            dim: Rgb::new(0x6c, 0x6a, 0x66),
            accent: Rgb::new(0xe0, 0xb0, 0x5a),
            border: Rgb::new(0x3a, 0x3d, 0x4a),
        }
    }
}

/// The looping ambient effects the UI knows how to draw.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum AmbientKind {
    Rain,
    Snow,
    Drip,
    Embers,
    Fireflies,
    Fog,
    Flicker,
    Shimmer,
    Stars,
    Steam,
    Dust,
}

impl AmbientKind {
    pub const ALL: [(&'static str, Self); 11] = [
        ("rain", Self::Rain),
        ("snow", Self::Snow),
        ("drip", Self::Drip),
        ("embers", Self::Embers),
        ("fireflies", Self::Fireflies),
        ("fog", Self::Fog),
        ("flicker", Self::Flicker),
        ("shimmer", Self::Shimmer),
        ("stars", Self::Stars),
        ("steam", Self::Steam),
        ("dust", Self::Dust),
    ];

    pub fn parse(name: &str) -> Option<Self> {
        Self::ALL.iter().find(|(n, _)| *n == name).map(|(_, k)| *k)
    }
}

/// One ambient effect with the knobs a pack may tune. Unset knobs use the effect's defaults.
#[derive(Clone, Debug, PartialEq)]
pub struct AmbientSpec {
    pub kind: AmbientKind,
    pub glyphs: Vec<char>,
    pub colors: Vec<Rgb>,
    pub rate: Option<f32>,
    pub speed: Option<f32>,
    pub strength: Option<f32>,
}

/// A brief effect triggered by an action.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum OneShotKind {
    Shake,
    Flash,
    Sparkle,
    Wash,
}

impl OneShotKind {
    pub fn parse(name: &str) -> Option<Self> {
        Some(match name {
            "shake" => Self::Shake,
            "flash" => Self::Flash,
            "sparkle" => Self::Sparkle,
            "wash" => Self::Wash,
            _ => return None,
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct OneShot {
    pub kind: OneShotKind,
    pub color: Option<Rgb>,
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn parses_hex_colours() {
        assert_eq!(Rgb::from_hex("#ff8000"), Some(Rgb::new(255, 128, 0)));
        assert_eq!(Rgb::from_hex("#f80"), Some(Rgb::new(255, 136, 0)));
        assert_eq!(Rgb::from_hex("ff8000"), None);
        assert_eq!(Rgb::from_hex("#ff80"), None);
        assert_eq!(Rgb::from_hex("#ééé"), None);
    }

    #[test]
    fn lerp_hits_both_ends() {
        let a = Rgb::new(0, 0, 0);
        let b = Rgb::new(200, 100, 50);
        assert_eq!(a.lerp(b, 0.0), a);
        assert_eq!(a.lerp(b, 1.0), b);
        assert_eq!(a.lerp(b, 0.5), Rgb::new(100, 50, 25));
        assert_eq!(a.lerp(b, 7.0), b);
    }
}
