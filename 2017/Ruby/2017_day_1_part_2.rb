#http://adventofcode.com/2017/day/1

# Now, instead of considering the next digit, it wants you to consider the digit halfway around the circular list. That is, if your list contains 10 items, only include a digit in your sum if the digit 10/2 = 5 steps forward matches it. Fortunately, your list has an even number of elements.
#
# For example:
#
# 1212 produces 6: the list contains 4 items, and all four digits match the digit 2 items ahead.
# 1221 produces 0, because every comparison is between a 1 and a 2.
# 123425 produces 4, because both 2s match each other, but no other digit has a match.
# 123123 produces 12.
# 12131415 produces 4.


class Captcha_2
  def calc input
    output = 0
    input = input.to_s
    steps = input.length/2
    for i in 0..input.length - 1
      next_index = i + steps
      if next_index >= input.length
        next_index = next_index - input.length
      end
      if input[i] == input[next_index]
        output += input[i].to_i
      end
    end
    output
  end
end