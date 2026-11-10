use std::path::{Path, PathBuf};
use std::process::ExitCode;

use feathers::pack::{self, Pack};
use feathers::world::SpaceId;
use feathers::{Error, Result};

const USAGE: &str = "\
feathers - wander through textual worlds

Usage:
  feathers [PACK] [--at SPACE] [--no-motion]   play a world (choose one from ./packs if PACK is omitted)
  feathers check PACK                          load a pack and report problems, warnings and size

Options:
  --at SPACE     start a throwaway journey in the given space (nothing is saved)
  --no-motion    disable all animation
  -h, --help     show this help
  -V, --version  show the version";

/// Where packs are looked for when none is named.
const PACKS_DIR: &str = "packs";
/// Where journeys are saved.
const SAVES_DIR: &str = "saves";

enum Invocation {
    Help,
    Version,
    Check(PathBuf),
    Play(feathers::ui::Options),
}

fn parse(args: impl Iterator<Item = String>) -> Result<Invocation> {
    let mut options = feathers::ui::Options {
        pack: None,
        packs_dir: PathBuf::from(PACKS_DIR),
        saves_dir: PathBuf::from(SAVES_DIR),
        at: None,
        motion: true,
    };
    let mut positional = Vec::new();
    let mut args = args.peekable();
    while let Some(arg) = args.next() {
        match arg.as_str() {
            "-h" | "--help" => return Ok(Invocation::Help),
            "-V" | "--version" => return Ok(Invocation::Version),
            "--no-motion" => options.motion = false,
            "--at" => {
                let space = args
                    .next()
                    .ok_or_else(|| Error::Usage("--at needs a space id".into()))?;
                options.at = Some(SpaceId::new(space));
            }
            flag if flag.starts_with('-') => {
                return Err(Error::Usage(format!("unknown option '{flag}'\n\n{USAGE}")));
            }
            _ => positional.push(arg),
        }
    }
    match positional.as_slice() {
        [] => Ok(Invocation::Play(options)),
        [command, pack] if command == "check" => Ok(Invocation::Check(PathBuf::from(pack))),
        [command] if command == "check" => Err(Error::Usage("check needs a pack directory".into())),
        [pack] => {
            options.pack = Some(PathBuf::from(pack));
            Ok(Invocation::Play(options))
        }
        _ => Err(Error::Usage(format!("too many arguments\n\n{USAGE}"))),
    }
}

fn check(dir: &Path) -> Result<()> {
    let Pack { world, report, .. } = pack::load(dir)?;
    let stats = &report.stats;
    println!("{} {} ({})", world.meta.name, world.meta.version, world.meta.id);
    for (region, spaces) in &stats.regions {
        println!("  {region}: {spaces} spaces");
    }
    println!(
        "  total: {} spaces ({} secret), {} things, {} actions, {} items, {} wonders, {} script hooks",
        stats.spaces, stats.secrets, stats.things, stats.actions, stats.items, stats.wonders, stats.hooks
    );
    for warning in &report.warnings {
        println!("  warning: {warning}");
    }
    println!("ok: no errors, {} warning(s)", report.warnings.len());
    Ok(())
}

fn main() -> ExitCode {
    let outcome = parse(std::env::args().skip(1)).and_then(|invocation| match invocation {
        Invocation::Help => {
            println!("{USAGE}");
            Ok(())
        }
        Invocation::Version => {
            println!("feathers {}", env!("CARGO_PKG_VERSION"));
            Ok(())
        }
        Invocation::Check(dir) => check(&dir),
        Invocation::Play(options) => feathers::ui::run(options),
    });
    match outcome {
        Ok(()) => ExitCode::SUCCESS,
        Err(error) => {
            eprintln!("{}", error.to_string().trim_end());
            ExitCode::FAILURE
        }
    }
}
