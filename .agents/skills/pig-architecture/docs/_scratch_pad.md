# CLI scaffold notes

1. `src/main.zig` is the executable entry point. Zig calls `main`, which passes `std.process.Init` to `pig_coding/cli.zig`'s `run` function.
2. `build.zig.zon` is the package manifest. It stores compile-time metadata such as the package name and version; it is not part of the running application.
3. `build.zig` imports the manifest at compile time and reads `manifest.version`.
4. `b.addOptions()` creates a generated module, and `addOption` places the version inside it.
5. `exe.root_module.addOptions("build_options", build_options)` registers that generated module in the executable's import table.
6. `cli.zig` can therefore use `@import("build_options")`. Unlike our earlier imports, this name does not refer to a source file: the build configuration resolves it to the generated module.

## Next: finish `cli.run`

1. Prepare a buffered standard-output writer using `init.io`.
2. Inspect the first user argument, `args[1]`, safely by checking the slice length first.
3. If it equals `"--version"`, print `pig` followed by `build_options.version`, then return.
4. Otherwise, print the default scaffold message.
5. Flush standard output so all buffered text is written.
6. Remove the temporary `_ = args` line once `args` is used.
