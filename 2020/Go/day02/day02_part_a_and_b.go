package main

import (
	"strconv"
	"strings"
)

func FindNumberOfValidPasswords(passwords []string) (count int) {
	for _, passwordLine := range passwords {
		items := strings.Split(passwordLine, " ")
		minMaxNumbers := strings.Split(items[0], "-")
		letter := items[1][:len(items[1])-1]
		password := items[2]
		min, _ := strconv.Atoi(minMaxNumbers[0])
		max, _ := strconv.Atoi(minMaxNumbers[1])
		numberOfOccurences := computeNumberOfOccurencesOf(letter, password)
		if numberOfOccurences >= min && numberOfOccurences <= max {
			count++
		}
	}
	return
}

func computeNumberOfOccurencesOf(letter string, password string) (count int) {
	for _, character := range password {
		if string(character) == letter {
			count++
		}
	}
	return
}

func FindNumberOfValidPasswordsBasedOnPositions(passwords []string) (count int) {
	for _, passwordLine := range passwords {
		items := strings.Split(passwordLine, " ")
		positions := strings.Split(items[0], "-")
		letter := items[1][:len(items[1])-1]
		password := items[2]
		position1, _ := strconv.Atoi(positions[0])
		position2, _ := strconv.Atoi(positions[1])
		letterAtPosition1 := string(password[position1-1])
		letterAtPosition2 := string(password[position2-1])
		if valid := passwordRuleValid(letter, letterAtPosition1, letterAtPosition2); valid {
			count++
		}
	}
	return
}

func passwordRuleValid(letter string, letterAtPosition1 string, letterAtPosition2 string) bool {
	if letterAtPosition1 == letter && letterAtPosition2 == letter {
		return false
	} else if letterAtPosition1 != letter && letterAtPosition2 != letter {
		return false
	} else if letterAtPosition1 == letter || letterAtPosition2 == letter {
		return true
	}
	return false
}
