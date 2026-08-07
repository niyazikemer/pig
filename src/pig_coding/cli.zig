const build_options = @import("build_options");
const std = @import("std");

pub fn run(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = std.Io.File.stdout().writer(init.io, &stdout_buffer);
    const stdout = &stdout_writer.interface;

    if (args.len > 1 and std.mem.eql(u8, args[1], "--version")) {
        try stdout.print("pig {s}\n", .{build_options.version});
    } else {
        try stdout.print(
            "Pig phase 0 scaffold is installed. Run `pig --version` to verify the CLI.\n",
            .{},
        );
    }

    try stdout.flush();
}
