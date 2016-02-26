# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# input: two dimensional array
# output: boolean, "BINGO!"
# Create a method to iterate through an array of arrays if one array has only Xs it will print "BINGO!"
# Create a method to iterate through an array of arrays if a position for each inner array has only Xs,it will print "BINGO!" 
# Create a method to iterate through an array of arrays if a position with is the same index for the array for all has only Xs,it will print "BINGO!" 
# Create a method to iterate through an array of arrays if the max position of the min index has an X and then iterate for position minus one and index + 1, it will rpint "BINGO"

# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer
  attr_reader :board

  def initialize(board)
    @board = board  
  end

# Create a method to return BINGO when criteria met
  def check_bingo
    if horizontal? then puts "BINGO!"
    elsif vertical? then puts "BINGO!"
    elsif diagonal_1? then puts "BINGO!"
    elsif diagonal_2? then puts "BINGO!"
    end  
  end    

# Create methods to recognize an array with Xs that will print "BINGO!"
  def horizontal?
    @board.each { |sub_array|
      num_x = 0
      sub_array.each { |item|
        num_x += 1 if item == 'x' 
      }
      if num_x == sub_array.length
        return true
      end  
    }
    return false
  end

  def vertical?
    (0...@board.length).each {|column|
      num_x = 0 
      @board.each { |sub_array| 
        num_x += 1 if sub_array[column] == 'x'
      }
      if num_x == @board.length
        return true
      end  
    }
    return false
  end

  def diagonal_1?
    num_x = 0
    (0...@board.length).each {|index|
      if @board[index][index] == 'x'
        num_x += 1 
      end
    }
    if num_x == @board.length
      return true
    end
    return false
  end

  def diagonal_2?
      num_x = 0
    (0...@board.length).each {|index|
      if @board[index][@board.length-1-index] == 'x'
        num_x += 1 
      end
    }
    if num_x == @board.length
      return true
    end
    return false
  end
end

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

horizontal_board = BingoScorer.new(horizontal)
horizontal_board.check_bingo
vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]

vertical_board = BingoScorer.new(vertical)
vertical_board.check_bingo            
right_to_left = [['x', 44, 71, 8, 88],
                  [22, 'x', 75, 65, 73],
                  [83, 85, 'x', 89, 57],
                  [25, 31, 96, 'x', 51],
                  [75, 70, 54, 80, 'x']]  
diagonal_1_board = BingoScorer.new(right_to_left)
diagonal_1_board.check_bingo                     
 
left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]    
                  
diagonal_2_board = BingoScorer.new(left_to_right)
diagonal_2_board.check_bingo 
                  
# Refactored Solution
