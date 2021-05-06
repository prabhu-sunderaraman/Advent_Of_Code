package main

func ConstructEqualLengthString(lines []string) []string {
	values := make([]string, len(lines))
	for index, line := range lines {
		for i := 0; i < len(lines); i++ {
			values[index] += line
		}
	}
	return values
}

func FindTreesCount(lines []string, rightPositionStep int, downPositionStep int) (count int) {
	currentPosition := rightPositionStep
	for i := 1; i < len(lines); i += downPositionStep {
		line := lines[i]
		if string(line[currentPosition]) == "#" {
			count++
		}
		currentPosition += rightPositionStep
	}
	return
}
