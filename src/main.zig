const cli = @import("pig_coding/cli.zig");
const std = @import("std");

pub fn main(init:std.process.Init) !void {
    try cli.run(init);
}