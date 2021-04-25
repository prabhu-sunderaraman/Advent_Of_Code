package main

import (
	"strconv"
	"strings"
)

func GenerateNumArr(input string) []int {
	lines := strings.Split(input, "\n")
	numbers := make([]int, len(lines))
	for i := 0; i < len(lines); i++ {
		num, _ := strconv.Atoi(lines[i])
		numbers[i] = num
	}
	return numbers
}

func FindTwoNumbersThatSumUpTo2020(numbers []int) []int {
	result := make([]int, 2)
	index := 0
	for result[0] == 0 && result[1] == 0 {
		num1 := numbers[index]
		for i := index + 1; i < len(numbers); i++ {
			num2 := numbers[i]
			if num1+num2 == 2020 {
				result[0] = num1
				result[1] = num2
				break
			}
		}
		index++
	}

	return result
}

func FindThreeNumbersThatSumUpTo2020(numbers []int) []int {
	result := make([]int, 3)
	index := 0
	for result[0] == 0 && result[1] == 0 && result[2] == 0 {
		num1 := numbers[index]
		for i := index + 1; i < len(numbers); i++ {
			num2 := numbers[i]
			if value := 2020 - num1 - num2; contains(numbers, value) {
				result[0] = num1
				result[1] = num2
				result[2] = value
				break
			}
		}
		index++
	}

	return result
}

func contains(numbers []int, value int) bool {
	for _, v := range numbers {
		if value == v {
			return true
		}
	}
	return false
}
