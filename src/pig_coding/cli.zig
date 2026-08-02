const build_options = @import("build_options");
const std = @import("std");

pub fn run(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    _ = args;
} 