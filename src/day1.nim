import std/sequtils
import std/strutils

const input = staticRead("../inputs/day1.txt").splitLines().map(parseInt)

proc getFuel(mass: int): int =
    mass div 3 - 2


proc part1*(): int =
    input.map(getFuel).foldl(a + b)


proc part2*(): int =
    for mass in input:
        var fuel = getFuel(mass)
        while fuel > 0:
            result += fuel
            fuel = getFuel(fuel)
    result
