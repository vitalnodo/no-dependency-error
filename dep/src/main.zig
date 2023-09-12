const std = @import("std");
const testing = std.testing;
const CBC = @import("zig-cbc");

export fn add(a: i32, b: i32) i32 {
    std.debug.print("{any}\n", .{CBC});
    return a + b;
}

test "basic add functionality" {
    try testing.expect(add(3, 7) == 10);
}
