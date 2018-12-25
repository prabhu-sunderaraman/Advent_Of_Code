#http://adventofcode.com/2018/day/2


class InventoryManager
  
  attr_reader :two_count, :three_count
  
  def initialize
    @two_count = 0
    @three_count = 0
  end
  
  def set_input input
    lines_arr = input.split(/\n+/)
    if lines_arr.size > 1
      lines_arr.each do |line|
        calc_count line
      end
    else
      calc_count input
    end
  end
  
  
  def calc_count input
    letter_hash = Hash.new
    input.each_char { |c| 
      if letter_hash.key?(c)
        letter_hash[c] = letter_hash[c] + 1
      else
        letter_hash[c] = 1
      end
    }
    two_count_present = false
    three_count_present = false
    letter_hash.each_value { |value|
      if value == 2 && !two_count_present
        @two_count += 1
        two_count_present = true
      elsif value == 3 && !three_count_present
        @three_count += 1
        three_count_present = true
      end
    }
    
  end
  
end