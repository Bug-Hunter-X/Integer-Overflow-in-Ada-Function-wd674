# Ada Integer Overflow Example

This repository demonstrates a potential integer overflow bug in Ada.  The `Add_One` function appears simple but can lead to unexpected behavior if the input `X` is close to the maximum value representable by the `Integer` type.

## Bug Description
The `Add_One` function does not explicitly handle potential integer overflow. If the input `X` is the maximum value of the `Integer` type, adding 1 will cause an overflow, leading to undefined behavior.

## Solution
The solution demonstrates how to use Ada's `Numeric_Error` exception handling to catch and gracefully handle such overflow conditions.  This allows the program to either recover from the overflow or report the error in a controlled way.