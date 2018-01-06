#http://adventofcode.com/2017/day/2

# It sounds like the goal is to find the only two numbers in each row where one evenly divides the other - that is, where the result of the division operation is a whole number. They would like you to find those numbers on each line, divide them, and add up each line's result.
#
# For example, given the following spreadsheet:
#
# 5 9 2 8
# 9 4 7 3
# 3 8 6 5
# In the first row, the only two numbers that evenly divide are 8 and 2; the result of this division is 4.
# In the second row, the two numbers are 9 and 3; the result is 3.
# In the third row, the result is 2.
# In this example, the sum of the results would be 4 + 3 + 2 = 9.


# 5 9 2 8
# 5/9  5/2  5/8
# 9/5. 9/2. 9/8
# 2/5. 2/9. 2/8
# 8/5. 8/9. 8/2


class Checksum_2
  def calc input
    output = 0
    rows_arr = input.split "\n"
    rows_arr.each do |row| 
      if row != ''
        row_arr = row.split ' '
        row_arr = row_arr.map {|n| n.to_i}
        done = false
        for i in 0..row_arr.size - 1
          for j in 0..row_arr.size - 1
            if i != j
              quotient = row_arr[i]/row_arr[j]
              reminder = row_arr[i] % row_arr[j]
              if reminder == 0
                output += quotient
                done = true
                break
              end
            end
          end  
          break if done
        end
      end
    end
    output
  end
end