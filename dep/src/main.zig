const std = @import("std");
const testing = std.testing;
const CBC = @import("zig-cbc");

pub export fn add(a: i32, b: i32) i32 {
    const cbc = CBC.CBC(std.crypto.core.aes.Aes128);
    std.debug.print(
        "hello from CBC.paddedLength {any}\n",
        .{cbc.paddedLength(15)},
    );
    return a + b;
}

test "basic add functionality" {
    try testing.expect(add(3, 7) == 10);
}
