//! The crate's error type.

use std::fmt;
use std::io;
use std::path::PathBuf;

#[derive(Debug)]
pub enum Error {
    /// A file or the terminal could not be read or written.
    Io { path: PathBuf, source: io::Error },
    /// A pack failed to load. Each problem names the file (and line when known) it came from.
    Pack { pack: PathBuf, problems: Vec<String> },
    /// A save file exists but cannot be used.
    Save { path: PathBuf, reason: String },
    /// The command line was not understood.
    Usage(String),
}

impl Error {
    pub fn io(path: impl Into<PathBuf>, source: io::Error) -> Self {
        Self::Io {
            path: path.into(),
            source,
        }
    }
}

impl fmt::Display for Error {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Self::Io { path, source } => write!(f, "{}: {source}", path.display()),
            Self::Pack { pack, problems } => {
                writeln!(
                    f,
                    "pack {} has {} problem(s):",
                    pack.display(),
                    problems.len()
                )?;
                for problem in problems {
                    writeln!(f, "  error: {problem}")?;
                }
                Ok(())
            }
            Self::Save { path, reason } => write!(f, "save {}: {reason}", path.display()),
            Self::Usage(message) => f.write_str(message),
        }
    }
}

impl std::error::Error for Error {
    fn source(&self) -> Option<&(dyn std::error::Error + 'static)> {
        match self {
            Self::Io { source, .. } => Some(source),
            _ => None,
        }
    }
}

pub type Result<T> = std::result::Result<T, Error>;
