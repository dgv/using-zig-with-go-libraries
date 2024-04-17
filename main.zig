const std = @import("std");
const go = @cImport({
    @cInclude("libgo.h");
});

pub fn main() !void {
    const msg = "hello from Zig";
    go.PrintConsole(go.GoString{ .p = msg, .n = msg.len });
    std.debug.print("sum(3, 7)={d}\n", .{go.Sum(3, 7)});
}
