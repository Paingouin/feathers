//! Ambience: the faint, looping motion behind the panels.
//!
//! Particle positions use a cosmetic random generator that lives only here. Nothing in the
//! world or the player's progress ever depends on it.

use std::f32::consts::{PI, TAU};

use crate::world::{AmbientKind, AmbientSpec, OneShot, OneShotKind, Palette, Rgb};

use super::canvas::Canvas;

const MAX_PARTICLES: usize = 600;
/// How strongly particles stand out from the background. Kept low: ambience must never
/// compete with the prose.
const PARTICLE_OPACITY: f32 = 0.6;

/// xorshift64*: small, fast, and plenty for placing raindrops.
#[derive(Clone, Debug)]
pub struct Rng(u64);

impl Rng {
    pub fn new(seed: u64) -> Self {
        Self(seed | 1)
    }

    pub fn unit(&mut self) -> f32 {
        self.0 ^= self.0 >> 12;
        self.0 ^= self.0 << 25;
        self.0 ^= self.0 >> 27;
        let bits = self.0.wrapping_mul(0x2545_f491_4f6c_dd1d) >> 40;
        bits as f32 / (1u64 << 24) as f32
    }

    fn range(&mut self, low: f32, high: f32) -> f32 {
        low + (high - low) * self.unit()
    }
}

/// What a particle effect looks like when the pack does not say.
struct Defaults {
    glyphs: &'static str,
    color: Rgb,
    /// Particles born per second for every 1000 cells of screen, at `rate = 1`.
    births: f32,
    life: (f32, f32),
}

fn defaults(kind: AmbientKind) -> Option<Defaults> {
    let d = |glyphs, color: (u8, u8, u8), births, life| {
        Some(Defaults {
            glyphs,
            color: Rgb::new(color.0, color.1, color.2),
            births,
            life,
        })
    };
    match kind {
        AmbientKind::Rain => d("⠁⠂⠄⡀", (0x6f, 0x8f, 0xb0), 9.0, (1.0, 2.0)),
        AmbientKind::Snow => d("·∙*", (0xd0, 0xd8, 0xe0), 2.0, (6.0, 10.0)),
        AmbientKind::Drip => d("⠁⠂⠄⡀", (0x5a, 0x90, 0xa0), 0.6, (1.5, 2.5)),
        AmbientKind::Embers => d("∙·˙", (0xff, 0x9a, 0x3c), 1.2, (2.0, 4.5)),
        AmbientKind::Fireflies => d("✧·", (0xd8, 0xff, 0x7a), 0.5, (4.0, 8.0)),
        AmbientKind::Stars => d("·∙✧", (0xc0, 0xc8, 0xe8), 0.8, (3.0, 8.0)),
        AmbientKind::Steam => d("∙°˙", (0x9a, 0x9a, 0xa8), 1.0, (3.0, 5.0)),
        AmbientKind::Dust => d("·˙", (0x8a, 0x84, 0x70), 0.8, (5.0, 9.0)),
        AmbientKind::Fog | AmbientKind::Flicker | AmbientKind::Shimmer => None,
    }
}

#[derive(Clone, Debug)]
struct Particle {
    /// Index of the effect it belongs to; `None` for a spark.
    spec: Option<usize>,
    kind: AmbientKind,
    x: f32,
    y: f32,
    vx: f32,
    vy: f32,
    age: f32,
    life: f32,
    /// A per-particle constant in 0..1, for variety.
    seed: f32,
    color: Rgb,
}

#[derive(Clone, Debug)]
pub struct Ambience {
    specs: Vec<AmbientSpec>,
    /// Fractional particles owed to each effect.
    owed: Vec<f32>,
    particles: Vec<Particle>,
    rng: Rng,
    time: f32,
}

impl Ambience {
    pub fn new(seed: u64) -> Self {
        Self {
            specs: Vec::new(),
            owed: Vec::new(),
            particles: Vec::new(),
            rng: Rng::new(seed),
            time: 0.0,
        }
    }

    /// Switches to a new set of effects. The same set again changes nothing.
    pub fn set(&mut self, specs: &[AmbientSpec]) {
        if self.specs != specs {
            self.specs = specs.to_vec();
            self.owed = vec![0.0; specs.len()];
            self.particles.retain(|p| p.spec.is_none());
        }
    }

    #[cfg(test)]
    pub fn particle_count(&self) -> usize {
        self.particles.len()
    }

    /// A short burst of sparks around a point.
    pub fn sparks(&mut self, x: f32, y: f32, color: Rgb, count: usize) {
        for _ in 0..count {
            let angle = self.rng.range(0.0, TAU);
            let speed = self.rng.range(3.0, 11.0);
            self.particles.push(Particle {
                spec: None,
                kind: AmbientKind::Stars,
                x,
                y,
                vx: angle.cos() * speed * 2.0,
                vy: angle.sin() * speed,
                age: 0.0,
                life: self.rng.range(0.4, 0.9),
                seed: self.rng.unit(),
                color,
            });
        }
    }

    fn spawn(&mut self, index: usize, width: f32, height: f32) {
        let spec = &self.specs[index];
        let Some(default) = defaults(spec.kind) else {
            return;
        };
        let speed = spec.speed.unwrap_or(1.0);
        let rng = &mut self.rng;
        let seed = rng.unit();
        let color = if spec.colors.is_empty() {
            default.color
        } else {
            spec.colors[(seed * spec.colors.len() as f32) as usize % spec.colors.len()]
        };
        let anywhere = |rng: &mut Rng| (rng.range(0.0, width), rng.range(0.0, height));
        let ((x, y), (vx, vy)) = match spec.kind {
            AmbientKind::Rain => ((rng.range(0.0, width), 0.0), (-2.0, rng.range(18.0, 26.0))),
            AmbientKind::Snow => ((rng.range(0.0, width), 0.0), (0.0, rng.range(1.5, 3.0))),
            AmbientKind::Drip => (
                (rng.range(0.0, width), rng.range(0.0, height * 0.4)),
                (0.0, 0.5),
            ),
            AmbientKind::Embers => (
                (rng.range(0.0, width), height - 1.0),
                (rng.range(-1.0, 1.0), -rng.range(1.5, 4.0)),
            ),
            AmbientKind::Steam => (
                (rng.range(0.0, width), height - 1.0),
                (rng.range(-0.5, 0.5), -rng.range(0.8, 1.8)),
            ),
            AmbientKind::Fireflies => (anywhere(rng), (0.0, 0.0)),
            AmbientKind::Dust => (
                anywhere(rng),
                (rng.range(0.3, 1.2), rng.range(-0.15, 0.25)),
            ),
            _ => (anywhere(rng), (0.0, 0.0)),
        };
        self.particles.push(Particle {
            spec: Some(index),
            kind: spec.kind,
            x,
            y,
            vx: vx * speed,
            vy: vy * speed,
            age: 0.0,
            life: rng.range(default.life.0, default.life.1),
            seed,
            color,
        });
    }

    pub fn step(&mut self, dt: f32, width: u16, height: u16) {
        self.time += dt;
        let (w, h) = (f32::from(width), f32::from(height));
        let area = w * h / 1000.0;
        for index in 0..self.specs.len() {
            let Some(default) = defaults(self.specs[index].kind) else {
                continue;
            };
            let rate = self.specs[index].rate.unwrap_or(1.0).clamp(0.0, 10.0);
            self.owed[index] += rate * default.births * area * dt;
            while self.owed[index] >= 1.0 {
                self.owed[index] -= 1.0;
                if self.particles.len() < MAX_PARTICLES {
                    self.spawn(index, w, h);
                }
            }
        }
        let time = self.time;
        for p in &mut self.particles {
            p.age += dt;
            match (p.spec, p.kind) {
                (None, _) => {
                    p.vx *= 1.0 - 3.0 * dt;
                    p.vy = p.vy * (1.0 - 3.0 * dt) + 6.0 * dt;
                }
                (_, AmbientKind::Drip) => p.vy += 14.0 * dt,
                (_, AmbientKind::Snow) => p.vx = (time * 0.8 + p.seed * TAU).sin() * 1.2,
                (_, AmbientKind::Embers | AmbientKind::Steam) => {
                    p.vx += (time * 1.7 + p.seed * TAU).sin() * 2.0 * dt;
                }
                (_, AmbientKind::Fireflies) => {
                    p.vx = (time * 0.6 + p.seed * 40.0).sin() * 2.2;
                    p.vy = (time * 0.45 + p.seed * 23.0).cos() * 0.8;
                }
                _ => {}
            }
            p.x += p.vx * dt;
            p.y += p.vy * dt;
        }
        self.particles
            .retain(|p| p.age < p.life && p.x >= -1.0 && p.x <= w && p.y >= -1.0 && p.y <= h);
    }

    /// Tints the background with the slow field effects (fog, water shimmer).
    pub fn fields(&self, canvas: &mut Canvas) {
        let fields: Vec<&AmbientSpec> = self
            .specs
            .iter()
            .filter(|s| matches!(s.kind, AmbientKind::Fog | AmbientKind::Shimmer))
            .collect();
        if fields.is_empty() {
            return;
        }
        let (width, height) = (usize::from(canvas.width()), f32::from(canvas.height()));
        for (i, cell) in canvas.cells_mut().iter_mut().enumerate() {
            let (x, y) = ((i % width) as f32, (i / width) as f32);
            for spec in &fields {
                let t = self.time * spec.speed.unwrap_or(1.0);
                let strength = spec.strength.unwrap_or(0.5).clamp(0.0, 1.0);
                let amount = if spec.kind == AmbientKind::Fog {
                    let n = 0.5
                        + 0.25 * (x * 0.11 + t * 0.5 + (y * 0.23 + t * 0.13).sin() * 2.0).sin()
                        + 0.25 * (x * 0.047 - t * 0.31 + y * 0.19).sin();
                    strength * 0.6 * n * n
                } else {
                    let depth = (y / height.max(1.0)).powf(1.5);
                    let n = (x * 0.35 + t * 1.3 + (y * 1.1 + t * 0.7).sin() * 1.5).sin();
                    strength * 0.3 * depth * n.max(0.0).powi(2)
                };
                let color = spec.colors.first().copied().unwrap_or(Rgb::new(0x30, 0x40, 0x48));
                cell.bg = cell.bg.lerp(color, amount);
            }
        }
    }

    /// Draws the particles. They only ever replace the glyph of a cell, never its background.
    pub fn particles(&self, canvas: &mut Canvas) {
        for p in &self.particles {
            let (x, y) = (p.x.floor() as i32, p.y.floor() as i32);
            let Some(bg) = canvas.cell(x, y).map(|c| c.bg) else {
                continue;
            };
            let progress = (p.age / p.life).clamp(0.0, 1.0);
            // Ease in over the first sixth of its life and out over the last third.
            let envelope = (progress * 6.0).min(1.0) * ((1.0 - progress) * 3.0).min(1.0);
            let pulse = match p.kind {
                AmbientKind::Fireflies => 0.5 + 0.5 * (p.age * 2.4 + p.seed * TAU).sin(),
                AmbientKind::Stars if p.spec.is_some() => 0.6 + 0.4 * (p.age * 3.0 + p.seed * TAU).sin(),
                _ => 1.0,
            };
            let (glyphs, colors): (Vec<char>, &[Rgb]) = match p.spec {
                None => ("✦✧·".chars().collect(), &[]),
                Some(index) => {
                    let spec = &self.specs[index];
                    let glyphs = if spec.glyphs.is_empty() {
                        defaults(p.kind).map(|d| d.glyphs.chars().collect()).unwrap_or_default()
                    } else {
                        spec.glyphs.clone()
                    };
                    (glyphs, &spec.colors)
                }
            };
            if glyphs.is_empty() {
                continue;
            }
            // Falling drops use their glyphs as sub-cell positions; rising ones burn down through
            // them; the rest just keep the one they were born with.
            let pick = match (p.spec, p.kind) {
                (Some(_), AmbientKind::Rain | AmbientKind::Drip) => p.y.rem_euclid(1.0),
                (Some(_), AmbientKind::Embers | AmbientKind::Steam) | (None, _) => progress,
                _ => p.seed,
            };
            let glyph = glyphs[((pick * glyphs.len() as f32) as usize).min(glyphs.len() - 1)];
            let color = match (p.kind, colors.len()) {
                (AmbientKind::Embers | AmbientKind::Steam, n) if n > 1 => {
                    let at = progress * (n - 1) as f32;
                    let i = (at as usize).min(n - 2);
                    colors[i].lerp(colors[i + 1], at - i as f32)
                }
                _ => p.color,
            };
            let opacity = if p.spec.is_some() { PARTICLE_OPACITY } else { 1.0 };
            canvas.put(x, y, glyph, bg.lerp(color, envelope * pulse * opacity), false, false);
        }
    }

    /// Firelight: a warm, unsteady tint over the whole finished frame.
    pub fn flicker(&self, canvas: &mut Canvas) {
        for spec in self.specs.iter().filter(|s| s.kind == AmbientKind::Flicker) {
            let t = self.time * spec.speed.unwrap_or(1.0);
            let unsteady = 0.6 + 0.25 * (t * 7.3).sin() + 0.15 * (t * 13.1 + 1.3).sin() + 0.1 * (t * 23.7).sin();
            let amount = spec.strength.unwrap_or(0.3).clamp(0.0, 1.0) * unsteady.max(0.0);
            let color = spec.colors.first().copied().unwrap_or(Rgb::new(0xff, 0xa0, 0x40));
            for cell in canvas.cells_mut() {
                cell.fg = cell.fg.lerp(color, amount * 0.18);
                cell.bg = cell.bg.lerp(color, amount * 0.05);
            }
        }
    }
}

/// The brief effects set off by actions.
#[derive(Clone, Debug, Default)]
pub struct OneShots {
    running: Vec<(OneShot, f32)>,
}

fn duration(kind: OneShotKind) -> f32 {
    match kind {
        OneShotKind::Shake => 0.35,
        OneShotKind::Flash => 0.3,
        OneShotKind::Wash => 1.2,
        OneShotKind::Sparkle => 0.0,
    }
}

impl OneShots {
    pub fn start(&mut self, shot: OneShot) {
        self.running.push((shot, 0.0));
    }

    pub fn step(&mut self, dt: f32) {
        for (_, age) in &mut self.running {
            *age += dt;
        }
        self.running.retain(|(shot, age)| *age < duration(shot.kind));
    }

    #[cfg(test)]
    pub fn is_idle(&self) -> bool {
        self.running.is_empty()
    }

    /// How far, in cells, the panels are currently knocked sideways.
    pub fn shake(&self) -> i32 {
        self.running
            .iter()
            .filter(|(shot, _)| shot.kind == OneShotKind::Shake)
            .map(|(_, age)| {
                let fade = 1.0 - age / duration(OneShotKind::Shake);
                ((age * 55.0).sin() * 1.6 * fade).round() as i32
            })
            .sum()
    }

    /// Flashes and washes: a colour laid over the finished frame, then fading.
    pub fn tint(&self, canvas: &mut Canvas, palette: &Palette) {
        for (shot, age) in &self.running {
            let progress = age / duration(shot.kind).max(f32::EPSILON);
            let color = shot.color.unwrap_or(palette.accent);
            let (fg, bg) = match shot.kind {
                OneShotKind::Flash => {
                    let k = (1.0 - progress).powi(2);
                    (k * 0.5, k * 0.3)
                }
                OneShotKind::Wash => {
                    let k = (progress * PI).sin();
                    (k * 0.25, k * 0.18)
                }
                _ => continue,
            };
            for cell in canvas.cells_mut() {
                cell.fg = cell.fg.lerp(color, fg);
                cell.bg = cell.bg.lerp(color, bg);
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn spec(kind: AmbientKind) -> AmbientSpec {
        AmbientSpec {
            kind,
            glyphs: Vec::new(),
            colors: Vec::new(),
            rate: None,
            speed: None,
            strength: None,
        }
    }

    const BG: Rgb = Rgb::new(10, 10, 10);

    #[test]
    fn rain_falls_and_stays_within_bounds() {
        let mut ambience = Ambience::new(7);
        ambience.set(&[spec(AmbientKind::Rain)]);
        for _ in 0..120 {
            ambience.step(1.0 / 30.0, 80, 24);
        }
        assert!(ambience.particle_count() > 5);
        assert!(ambience.particle_count() <= MAX_PARTICLES);
        let mut canvas = Canvas::new(80, 24, BG);
        ambience.particles(&mut canvas);
        let drawn = (0..24)
            .flat_map(|y| (0..80).map(move |x| (x, y)))
            .filter(|&(x, y)| canvas.cell(x, y).unwrap().ch != ' ')
            .count();
        assert!(drawn > 0);
    }

    #[test]
    fn the_same_seed_gives_the_same_frames() {
        let run = || {
            let mut ambience = Ambience::new(42);
            ambience.set(&[spec(AmbientKind::Embers), spec(AmbientKind::Fog)]);
            for _ in 0..90 {
                ambience.step(1.0 / 30.0, 60, 20);
            }
            let mut canvas = Canvas::new(60, 20, BG);
            ambience.fields(&mut canvas);
            ambience.particles(&mut canvas);
            canvas
        };
        assert_eq!(run(), run());
    }

    #[test]
    fn particles_never_touch_the_background_colour() {
        let mut ambience = Ambience::new(3);
        ambience.set(&[spec(AmbientKind::Dust), spec(AmbientKind::Fireflies)]);
        for _ in 0..200 {
            ambience.step(1.0 / 30.0, 40, 12);
        }
        let mut canvas = Canvas::new(40, 12, BG);
        ambience.particles(&mut canvas);
        assert!(canvas.cells_mut().iter().all(|c| c.bg == BG));
    }

    #[test]
    fn changing_effects_clears_the_old_particles() {
        let mut ambience = Ambience::new(1);
        ambience.set(&[spec(AmbientKind::Rain)]);
        for _ in 0..60 {
            ambience.step(1.0 / 30.0, 80, 24);
        }
        ambience.set(&[spec(AmbientKind::Rain)]);
        assert!(ambience.particle_count() > 0, "setting the same effects keeps them");
        ambience.set(&[]);
        assert_eq!(ambience.particle_count(), 0);
    }

    #[test]
    fn one_shots_run_their_course() {
        let mut shots = OneShots::default();
        shots.start(OneShot {
            kind: OneShotKind::Shake,
            color: None,
        });
        shots.step(0.05);
        assert!(!shots.is_idle());
        let mut moved = false;
        for _ in 0..20 {
            moved |= shots.shake() != 0;
            shots.step(0.02);
        }
        assert!(moved);
        assert!(shots.is_idle());
        assert_eq!(shots.shake(), 0);
    }
}
