#http://adventofcode.com/2018/day/2

class InventoryManager
  
  
  def get_common_code input
    output = ""
    lines_arr = input.split(/\n+/)
    lines_arr.each do |line|
      line.gsub!(/\s+/, '')
      lines_arr.each do |innerline| 
        innerline.gsub!(/\s+/, '')
        if line != innerline
          uncommon_chars = ""
          common_chars = ""
          line.each_char.with_index { |char, index| 
            if char != innerline[index]
              uncommon_chars += char
            else
              common_chars += char  
            end
          }
          if common_chars.size == line.size - 1
            output = common_chars
          end
        end
      end
      
    end
    output
  end
  

end