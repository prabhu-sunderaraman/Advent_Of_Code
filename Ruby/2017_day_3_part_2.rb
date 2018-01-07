#http://adventofcode.com/2017/day/3

# As a stress test on the system, the programs here clear the grid and then store the value 1 in square 1. Then, in the same allocation order as shown above, they store the sum of the values in all adjacent squares, including diagonals.
#
# So, the first few squares' values are chosen as follows:
#
# Square 1 starts with the value 1.
# Square 2 has only one adjacent filled square (with value 1), so it also stores 1.
# Square 3 has both of the above squares as neighbors and stores the sum of their values, 2.
# Square 4 has all three of the aforementioned squares as neighbors and stores the sum of their values, 4.
# Square 5 only has the first and fourth squares as neighbors, so it gets the value 5.
# Once a square is written, its value does not change. Therefore, the first few squares would receive the following values:
#
# 147  142  133  122   59
# 304    5    4    2   57
# 330   10    1    1   54
# 351   11   23   25   26
# 362  747  806--->   ...
# What is the first value written that is larger than your puzzle input?
#
# Your puzzle input is still 265149.

class SpiralMemory_2
    
  def initialize grid_limit_value
    @grid = Array.new 
    construct_grid grid_limit_value
  end
  
  def get_value_for x,y
    value = 0
    value_same_row_1 = 0
    value_same_row_2 = 0
    
    value_top_row_1 = 0
    value_top_row_2 = 0
    value_top_row_3 = 0
    
    value_bottom_row_1 = 0
    value_bottom_row_2 = 0
    value_bottom_row_3 = 0
    
    @grid.each do |item| 
        value_same_row_1 = item['value'] if item['x'] == x-1 && item['y'] == y
        value_same_row_2 = item['value'] if item['x'] == x+1 && item['y'] == y
        
        value_top_row_1 = item['value'] if item['x'] == x-1 && item['y'] == y+1
        value_top_row_2 = item['value'] if item['x'] == x && item['y'] == y+1
        value_top_row_3 = item['value'] if item['x'] == x+1 && item['y'] == y+1
        
        value_bottom_row_1 = item['value'] if item['x'] == x-1 && item['y'] == y-1
        value_bottom_row_2 = item['value'] if item['x'] == x && item['y'] == y-1
        value_bottom_row_3 = item['value'] if item['x'] == x+1 && item['y'] == y-1
        
    end
    value = value_same_row_1 + value_same_row_2 + value_top_row_1 + value_top_row_2 + value_top_row_3 + value_bottom_row_1 + value_bottom_row_2 + value_bottom_row_3
    value
  end
  
  def construct_grid limit
    counter = 1
    x = 0
    y = 0
    direction = 'right'
    distance = 0
    range = 1
    value = 1
    while counter <= limit
      item = Hash.new
      item['x'] = x
      item['y'] = y
      if x == 0 && y == 0
        item['value'] = 1 
      else
        item['value'] = get_value_for x,y    
      end
      
      @grid << item
      distance += 1
      case direction
      when 'left'
        x -= 1
        if distance >= range
          direction = 'bottom'
          distance = 0
        end
      when 'bottom'
        y -= 1
        if distance >= range
          direction = 'right'
          distance = 0
          range += 1
        end  
      when 'up'
        y += 1
        if distance >= range
          direction = 'left'
          distance = 0
          range += 1
        end
      when 'right'
        x += 1
        if distance >= range
          direction = 'up'
          distance = 0
        end
      end
      counter += 1
    end
    #puts @grid
  end
  
  def value_at x,y
    req_value = 0
    @grid.each do |item| 
      if item['x'] == x && item['y'] == y
        req_value = item['value']
        break
      end
    end
    req_value
  end
  
  def grid
    @grid
  end
end

