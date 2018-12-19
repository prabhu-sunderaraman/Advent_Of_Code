#http://adventofcode.com/2017/day/3

# You come across an experimental new kind of memory stored on an infinite two-dimensional grid.
#
# Each square on the grid is allocated in a spiral pattern starting at a location marked 1 and then counting up while spiraling outward. For example, the first few squares are allocated like this:
#
# 17  16  15  14  13
# 18   5   4   3  12
# 19   6   1   2  11
# 20   7   8   9  10
# 21  22  23---> ...
# While this is very space-efficient (no squares are skipped), requested data must be carried back to square 1 (the location of the only access port for this memory system) by programs that can only move up, down, left, or right. They always take the shortest path: the Manhattan Distance between the location of the data and square 1.
#
# For example:
#
# Data from square 1 is carried 0 steps, since it's at the access port.
# Data from square 12 is carried 3 steps, such as: down, left, left.
# Data from square 23 is carried only 2 steps: up twice.
# Data from square 1024 must be carried 31 steps.
# How many steps are required to carry the data from the square identified in your puzzle input all the way to the access port?

class SpiralMemory
    
  def initialize grid_limit_value
    @grid = Array.new 
    construct_grid grid_limit_value
  end
  
  def construct_grid limit
    counter = 1
    x = 0
    y = 0
    direction = 'right'
    distance = 0
    range = 1
    
    while counter <= limit
      item = Hash.new
      item['x'] = x
      item['y'] = y
      item['value'] = counter
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
  
  def calc_steps value
    req_steps = 0
    req_steps = 0 if value == 1
    x = 0
    y = 0
    @grid.each do |item|
      if item['value'] == value
        x = item['x']
        y = item['y']
        break
      end
    end
    if x != 0
        steps_x = x if x > 0
        steps_x = -x if x < 0
        req_steps += steps_x
        
      end
    if y != 0
        steps_y = y if y > 0
        steps_y = -y if y < 0
        req_steps += steps_y
      end
    req_steps
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

