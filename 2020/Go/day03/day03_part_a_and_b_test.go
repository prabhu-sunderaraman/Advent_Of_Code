package main

import (
	"fmt"
	"strings"
	"testing"
)

var testInput string = `..##.......
#...#...#..
.#....#..#.
..#.#...#.#
.#...##..#.
..#.##.....
.#.#.#....#
.#........#
#.##...#...
#...##....#
.#..#...#.#`

var puzzleInput string = `..#.#...#.#.#.##.....###.#....#
...........##.#...#.#..........
....#.....#..#.............#...
.#....###..##...#...##...#.#..#
#.......#.........#..#.......#.
...#.##..##...#.#......#.##.#..
#.#..##.....#.....#..##........
...#.####...#.##...#...........
.#...#..#..#....#.#.#.#.##.....
##.#..#.##..#......#..##.#.#..#
.#.##.....#.#...............#.#
..##.#.....#.....##..##.#....#.
#..#..........#...##........#..
#..##.#.#...............#..#...
..#....#...#.......#.......#...
.........#.#.##.#........#.....
#...##....#..#.........#.#...##
...#.#...#...........#..#...#..
...#..#........#...#...........
.#....##.#...#.#....#....##....
...#...#......#.#.......#...##.
####..........##....#..........
#..#...........................
#....#...####..##.#......#.#...
..#..#.....##.....#...#....#..#
#.##......#..##........#.......
..........#.....#...#.#.#....##
....##...##..#........#...#..#.
#..#..#...##..............##...
###.##..##.###...#....##.#..#..
.#......#.................#.#..
#.#..#.##.#.#.#.....#.........#
..##......#.......##........#..
#..............#.##.#.....#....
............................##.
..#.##......#..........#....#..
..##.....#..##.#....#.......##.
..#.#.##.#.........#...........
...........##.#.#...#......###.
#....#...#........#.#...#.#.###
..............#...#.....##....#
#...#...#..............#..#...#
.##..#.........#.##.#..#...##..
.....#.........#..#..#.......#.
.#......#.#.#....##..#...#..##.
#....................#.#....#..
......#.....##............#....
.#.....#......####.....#....##.
##.####.#..#..........#......#.
##....................#..##....
.....#...#.#.##.#.###.....#....
.#..#...####.#.#...#.#.....#...
#.....##.........##.##.##.....#
....#....##.###.........#...###
.......#........#.##.....#####.
...#.##..#...#...####.....##...
..#....#....#......#......#.#..
...#.#.#.........#.......#..#..
.....#...........#.#........##.
..##...#.#.##.#.#.#...###.#....
..##.............###....#.#....
#.......#....#..#...#..##..#...
....##..#.......####....#..#.##
##....#...#.#.#...#...#........
....#.#................#...#...
...#.....#.#.......##....#.#..#
#....##.#...#.#..#.#.........#.
#..##.........##.....#...#.....
....#.....#.#..#..##..##.##...#
#.....#...#.#.#.##....#.#.##...
.#.#........#..##.......#...#.#
..###.....#..#.##....#...#....#
...#..###...#...#.......#..#...
.#....##.......#.#..........##.
...#.#.............##.....##...
..#..#...#.....#...#...........
.#.#......#.##....#.....#......
........#.#.....#.#...#..#.#..#
#.....#.#.....#.##..#.#....#.#.
..#..###.#.#........#.....##..#
#.#....#......#.#....###..#...#
...#.#....#..#.##.....#...#....
....##....#.#...#.........#..##
.#......#...#.............#..#.
#........#........#.#.....##...
..##..#.##..#........#.........
.....#...#...#..#.....#.#.##.#.
..#..#..#.........#...#.......#
....#.....#.......#.##.#.##..##
......#.......##...#......#....
....#....##.......###.#......#.
.....#..#.#........#....#.....#
#...#...#....#...###........#..
#...........####.......#.#..#.#
..###....#..........#...#.###..
....#.#.....#....#..#.....#.##.
...##.#..#..#.......#......#.#.
....#......###..#.....#.....#..
.....#.#.#.....#.##.#....####..
.##....#.....#.#....##..#......
#..#.....#..#...#....#.#.......
.##.#..####..#.##.#......#.....
......#....#.......##.##....#..
...#....#....#..##.......##.###
..##..........##.............#.
.#...#.#...##..##.....#..#.....
....#.#.##...................#.
.......#.#..#....#.....#.......
.#.#..#....####...#.#.##....#..
.#.##...#..#..#...#.#.......#..
##.#.....##.........#.......#..
.##...#.....#.........##.#....#
.............#..#............##
...##.......#.....#.......#.##.
##..##.........................
.##.#........#........#........
.....#................#.#......
.............#....#....##....#.
#..##...##...#..#.#............
.......#...####.#..#..#.....##.
..#.#..#......#.....#.#.#.....#
...#..##........#..#.#....#.#..
.#.....#..###..#....#.##.#...#.
#.#..#.##.#..#......#.###...#..
##..#.#..###....##.#...#...##.#
##..#.........#...##......#....
#.#...#.#..#..........#.......#
.......#.#.......#.....##..#...
........#..##............##.#..
........##.....#........#..#...
#..##.#..###......##...........
..#.....#.#.#....#...#.#..#..##
#...............#.......#.#.##.
#..#.....#....#............#.#.
...#....#...#....#..#..###.....
..#....#.#.....#..#......##.#.#
.#.#....#..#...#....#........#.
..##....##....#.....#.#........
.#...#....##..##.....##.....##.
.#...........#....##...##.#....
...#.....#......###.##.#.......
......#.#..##.#.#....#...#...##
....#...###.##....#.#.....#....
.......#.....#......#.....##..#
.####.#...##..#....#...........
................###...#....#..#
...#...#.....###.#.##.......#..
..#....#...##...#.###......#.#.
#...#......#............#.....#
#.........#...............#..#.
...#.##.....#............#.....
........#......##..#..#..#.#..#
....#....#.....#.#.....##..#...
.....#....#..##.....#..........
.##....#..#...........##.......
#......##.....#...#.....#......
...#.....#......#.#....#.......
...#................##...#..#..
........#..........#....#......
......#....#.#.#...........#.#.
.#............#....##.......##.
#.......#.....#...##.#..##.....
.#.....#.##..#..#....#.#..#.#.#
....#...............###........
#####...........#..#.......#..#
...#.......#...#.#............#
#...#..#.#...#.#...#.##.....##.
.#..#..#..#.....#....#...#.....
.#...#......#.......#.........#
.#....#.....#...#...#..#....#..
#....#....#.......#.....##.....
.#...#.#.##.#....#..##........#
..##...#............#..........
..........#..#..#...#....#.....
..#.......#....#.....##..##....
.#...#......#...#..###...#...#.
..##...#......#...#.#.#...#....
.....#..#.#.#.#.#...#....##..#.
##..#..##....#.#........##.#...
.##..#.#...##..#....#..#.......
.....#...#...#..#.#..#......#..
.#.....##.##..#....####..#....#
......##.................#....#
....##.......###...#.##...##.#.
...#...#.................##.#..
.#.....##...#...#.....#.....##.
##.........####..#...#...#....#
...##.....#......#.###..#......
.....###..##.#.......###..##...
#....#...#.#...#...#.#....#..#.
#...#.........##.#.........###.
#....#..###..........##........
.###.....#.#.....#........##..#
....#.........##..#..#.#.#..#..
..#......#...........#..##...#.
...#.#..#..#...#.##..#..#.....#
.#...#...#....................#
..#..##..#.............#.....#.
.....###.#.#.#...##..#.##....#.
..#...####..##.#....#...#...#..
.....#..#........#.#.#..#.##...
#.#.........####..#...#.#......
..............#..#........#....
....#........#......#.........#
#..#.##......#.#.......#....#..
....#..............#.#.#..#....
#.#......#.....##.......#..##..
.#.#..........#....#......#....
.....#.......#.##.....#......##
...#...#.##.............####...
..#....##...#...##..#.#..##.#..
..#.........##.......###.#.....
..#.........#####..##...#......
..#.#...#.......#.####......##.
......#.#.#....#......####....#
.###...........#...#..#..#..##.
..#...#..##.##...#.#.##.....#..
.....#..#....##.......#...#....
......#.....#.........#..#..#..
...#..#.........##.....##.#...#
....##...#......#..#.....#.....
....#..#....#....#........##...
##.....#.......#.....#.#.#..#..
.....#..##.....##.##.#.........
.#.#..##.............#.#.......
......#.##.#.....#.#......#..#.
..........#.#..#....#.#.#.#..##
...##.....#..#...#...#...##....
........#.#......#..###..#.....
..#.##......#.......#.......#..
...#....##.##.........#.#......
......#....#.#.........#......#
.....#...#....#...#......#..#..
.##...#......#.........#...#.#.
..#.#.#......#....#............
..#.....##.............#.##.##.
#......#......#...##.......#.#.
##........#.....#..............
.#.###.................#.#....#
........##.#..##........#.#....
.......###...#...##.#..#....#..
.#..#....#..#......##......#...
.#...#....#..........##..##.#..
.#..###.......#............#...
...#.....###.#..#........#.#.#.
...#....#..#.##..........#.#.#.
.#..##..#.....#...........#....
#...#...##....#..#....##.......
#..#......#................#...
#..##....#.#..#......#.#.#.....
##.#..#...#.....#.#...#......##
#....#.#.#....#.....##.....##..
....#...##.#...####.#.#.#.#..#.
.....#.#....#..#.....#..#......
.........#.#...................
........#.....####......#..#..#
.#.#.##.#...#.#......#...##.##.
.#......#.#.#...#..#.......#...
..#......#.##.##.#.#....#......
..........#.#...###............
.##..#..#.#.#..#.....#..#.#....
......#.......#.#..#.#....#...#
.#.......###......#...#.#.#....
.............##..#..#...#....#.
....#......#.#...#.#...#...#...
..#....#.......#.#..#..#.#..#.#
.#..#.#...#.....#.#...#####...#
.##............#....#..........
#.......####...#.#.#...........
...#.......##.#..........#....#
..#.#......#.......##.....#..##
#......#.###..#......#......#.#
##....#..#....#.##....#..#.....
...##...#.#....#.#.......#.....
#...####....#..#.#..#.##....###
.....#..#..........###..#......
.#..#..#...#....#.##..#..#.....
#..#.....#....#..#.##...##.....
.....###.#..#.......#...###.##.
#..#........#.#..#.#.........#.
....##........................#
.#....#.#.#.#.#...#......#....#
#....#...#.##.......#.#.###....
..........###..##....#..##.#...
...##..###...#.#.#.......##...#
##.#...#..#.....###....#.......
..#..##....###........##....###
.....##..#...#..#.....#..#....#
#................#....#...#..##
#....#.#....#..###.#.#...#..#.#
........##.#...#.#.#.#...#.....
..#..###....#......##.#...##...
..#..##....#.##..#.....#.....#.
.#.#...#.....#..#..#......##.#.
........#.#...#..##....#..#....
...##...#...#...#...##...##..#.
.......#..#..#....#.#..#...##..
.#.....#.##........#...#.#.....
##.#..#....#.#....#.#....#...#.
..#.#......#.......##...#....#.
#.#..####..#........#.......###
....#.......#.......##.#...#.#.
..#..#.#.............#..#......
........###.....##....#.......#
...#.....#...#...#....#.###....
#...##.#........#..#...##..#..#
...##..#....#....#.#.#...#.#...
#......#.....#....###......##..
.....#.........####...##..#....
.......#...##...#..#..#.#......
.#.#....#.....#.......#........
...##...#....##..#.....###.....
.#....#........##......#....#.#
.........#.#.#.#...........#.#.
....#.#..##......#.#.#..##.....
.........#.....##....#.........
....#.............#...........#
...#..##........#.....###......
#....#....#......#..#..#..#.#..
#......##.....#..#....#..#.#...
#..............#....#.#....###.
..##..#..#...#...##........##..
..#.##....#..#......###..#.....`

func TestConstructEqualLengthStringOfTestInput(t *testing.T) {
	lines := strings.Split(testInput, "\n")
	input := ConstructEqualLengthString(lines)
	for _, line := range input {
		if len(line) != 121 {
			t.Error("Expected length is 121", line, len(line))
		}
	}
}

func TestFindTreesCountOfTestInput(t *testing.T) {
	lines := strings.Split(testInput, "\n")
	input := ConstructEqualLengthString(lines)
	count := FindTreesCount(input, 3, 1)
	if count != 7 {
		t.Error("Expected tree count is 7", count)
	}
}

func TestFindTreesCountOfTestInputForDifferentSlopes(t *testing.T) {
	lines := strings.Split(testInput, "\n")
	input := ConstructEqualLengthString(lines)
	count1 := FindTreesCount(input, 1, 1)
	count2 := FindTreesCount(input, 3, 1)
	count3 := FindTreesCount(input, 5, 1)
	count4 := FindTreesCount(input, 7, 1)
	count5 := FindTreesCount(input, 1, 2)
	fmt.Println(count1, count2, count3, count4, count5)
	total := count1 * count2 * count3 * count4 * count5
	if total != 336 {
		t.Error("Expected total is 336", total)
	}
}

func TestConstructEqualLengthStringOfPuzzleInput(t *testing.T) {
	lines := strings.Split(puzzleInput, "\n")
	input := ConstructEqualLengthString(lines)
	for _, line := range input {
		if len(line) != 10013 {
			t.Error("Expected length is 10013", len(line))
		}
	}
}

func TestFindTreesCountOfPuzzleInput(t *testing.T) {
	lines := strings.Split(puzzleInput, "\n")
	input := ConstructEqualLengthString(lines)
	count := FindTreesCount(input, 3, 1)
	if count != 178 {
		t.Error("Expected tree count is 178", count)
	}
}

func TestFindTreesCountOfPuzzleInputForDifferentSlopes(t *testing.T) {
	lines := strings.Split(puzzleInput, "\n")
	input := ConstructEqualLengthString(lines)
	count1 := FindTreesCount(input, 1, 1)
	count2 := FindTreesCount(input, 3, 1)
	count3 := FindTreesCount(input, 5, 1)
	count4 := FindTreesCount(input, 7, 1)
	count5 := FindTreesCount(input, 1, 2)
	fmt.Println(count1, count2, count3, count4, count5)
	total := count1 * count2 * count3 * count4 * count5
	if total != 4388038200 {
		t.Error("Expected total is 4388038200", total)
	}
}

//3517401300
//89551800
