# Phase 00 — CLI scaffold

Phase 00 ports Tau's smallest command-line surface to pig:

- The CLI can report the package version.
- Its default behavior confirms that the scaffold is installed.

The CLI belongs in `pig_coding` because it is application-facing code.

## Usage

Build the executable and run it directly from Zig's install output:

```console
$ zig build
$ ./zig-out/bin/pig
Pig phase 0 scaffold is installed. Run `pig --version` to verify the CLI.

$ ./zig-out/bin/pig --version
pig 0.0.0
```

When the executable is installed somewhere on `PATH`, it has the intended command-line form:

```console
$ pig --version
pig 0.0.0
```

The same version check can be run through Zig's build runner during development:

```console
$ zig build run -- --version
pig 0.0.0
```

## Files involved

- `src/main.zig` is the executable entry point and delegates to the CLI.
- `src/pig_coding/cli.zig` owns argument handling and terminal output.
- `build.zig.zon` is the source of truth for package metadata, including the version.
- `build.zig` makes that version available to the executable through build options.

## Difference from Tau

Tau uses Typer to declare and process its CLI. Pig currently handles its single option directly with Zig's standard library; a CLI framework would add little value at this phase.

Tau exposes the version as `tau_coding.__version__`. Pig keeps it in `build.zig.zon` and passes it into the program during the build, avoiding a second version declaration in the source.

Typer also supplies features such as generated help, completion behavior, and option validation. Phase 00 does not reproduce those framework features; it only ports the behavior needed by the current scaffold.
