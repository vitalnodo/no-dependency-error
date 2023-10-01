const std = @import("std");
const testing = std.testing;
const dep = @import("dep");

fn test123(a: i32, b: i32) i32 {
    return dep.add(a, b);
}

test "basic add functionality" {
    try testing.expect(test123(3, 7) == 10);
}
