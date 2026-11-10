//! Taking over the terminal, and always giving it back.

use std::io::{self, Stdout, Write};
use std::sync::Once;

use crossterm::cursor::{Hide, Show};
use crossterm::style::ResetColor;
use crossterm::terminal::{
    EnterAlternateScreen, LeaveAlternateScreen, disable_raw_mode, enable_raw_mode,
};
use crossterm::{execute, terminal};

/// While this exists the terminal is in raw mode on the alternate screen.
/// Dropping it (normally, on error or on panic) restores the terminal.
pub struct Terminal {
    out: Stdout,
}

fn restore() {
    let _ = execute!(io::stdout(), ResetColor, Show, LeaveAlternateScreen);
    let _ = disable_raw_mode();
}

impl Terminal {
    pub fn enter() -> io::Result<Self> {
        // A panic message printed on the alternate screen in raw mode would be lost.
        static HOOK: Once = Once::new();
        HOOK.call_once(|| {
            let default = std::panic::take_hook();
            std::panic::set_hook(Box::new(move |info| {
                restore();
                default(info);
            }));
        });
        enable_raw_mode()?;
        let mut out = io::stdout();
        if let Err(error) = execute!(out, EnterAlternateScreen, Hide) {
            restore();
            return Err(error);
        }
        Ok(Self { out })
    }

    pub fn size(&self) -> io::Result<(u16, u16)> {
        terminal::size()
    }

    pub fn out(&mut self) -> &mut impl Write {
        &mut self.out
    }
}

impl Drop for Terminal {
    fn drop(&mut self) {
        restore();
    }
}
