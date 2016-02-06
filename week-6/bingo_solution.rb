# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create an array  for BINGO . of two arrays, one of them will have 5 nested arrays of integers, the other will have the letter BINGO

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard(board)
  attr_accessor :bingo_board
  attr_reader :bingo, :letter, :number, :call 
  
  def initialize
    @bingo_board = board
    @bingo = bingo
    @letter = letter
    @number = number
    @call = call
  
  end
  
  # create a method to call one letter and one number
  def bingo_call
    number = board[rand(board.length)][rand(board.length)]
    letter = bingo[rand(bingo.length)]
    call = letter + number.to_s
  end

  #create a method to find the on the right column
  def find_number
    case which_column
    when @letter = "B"
      # create an array for the column representing  the letter B
      letter_b = board.collect {|numb| numb[0]}
      # create a condition if the number in the array for letter B is found, 
      if letter_b.each{|x| x == @number 
        # Create a method to replace the number by "x"
          @board.map {|n| if n include?(@number)
              n.map! {|x| x == @number x = "X"}
          }
      end
    when @letter = "I"
      # create an array for the column representing  the letter B
      letter_b = board.collect {|numb| numb[1]}
      # create a condition if the number in the array for letter B is found, 
      if letter_b.each{|x| x == @number 
        # Create a method to replace the number by "x"
          @board.map {|n| if n include?(@number)
              n.map! {|x| x == @number x = "X"}
          }
      end
    when @letter = "N"
      # create an array for the column representing  the letter B
      letter_b = board.collect {|numb| numb[2]}
      # create a condition if the number in the array for letter B is found, 
      if letter_b.each{|x| x == @number 
        # Create a method to replace the number by "x"
          @board.map {|n| if n include?(@number)
              n.map! {|x| x == @number x = "X"}
          }
      end
    when @letter = "G"
      # create an array for the column representing  the letter B
      letter_b = board.collect {|numb| numb[3]}
      # create a condition if the number in the array for letter B is found, 
      if letter_b.each{|x| x == @number 
        # Create a method to replace the number by "x"
          @board.map {|n| if n include?(@number)
              n.map! {|x| x == @number x = "X"}
          }
      end
    when @letter = "O"
      # create an array for the column representing  the letter B
      letter_b = board.collect {|numb| numb[4]}
      # create a condition if the number in the array for letter B is found, 
      if letter_b.each{|x| x == @number 
        # Create a method to replace the number by "x"
          @board.map {|n| if n include?(@number)
              n.map! {|x| x == @number x = "X"}
          }
      end
end



board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

 bingo = ["B","I","N","G","O"]
 

 #letter_b = [board[0][0], board[1][0], board[2][0], board[3][0], board[4][0]] #  I also tried but it doesn't work: letter_b = board.each {|x| if x.kind_of?(Array) x.fetch(0) {|inner|return inner }} 
 #letter_i = [board[0][1], board[1][1], board[2][1], board[3][1], board[4][1]]
 #letter_n = [board[0][2], board[1][2], board[2][2], board[3][2], board[4][2]]
 #letter_g = [board[0][3], board[1][3], board[2][3], board[3][3], board[4][3]]
 #letter_o = [board[0][4], board[1][4], board[2][4], board[3][4], board[4][4]]

# I didn't read the instuctions right and I went on a tengant . Hoever, I kept what I have worked on below. You will see my logic
  # create an array for the BINGO letters
 # def bingo_letter_array
#     bingo_letter = ["B","I","N","G","O"]
#   end

#   # Create an array of 100 integers from 1 to 100
#   def bingo_number_array
#     bingo_number = (1..100).to_a
#   end


#   # Create a bingo card or 5 lines with 
#   def bingo_card_array
#     bingo_card = bingo_number.shuffle.each_slice(5).to_a
#   end

#   # create a sub array
#   def
#   bingo = bingo_letter + bingo_card
#   end
# end
    
# puts "---------- BINGO ----------"
# 27.times do 
#   print "."
# end

# my_board = BingoBoard.new([[]])

# p bingo_card[0]
# p bingo_card[1]
# p bingo_card[2]
# p bingo_card[3]
# p bingo_card[4]

# case exist_on_card
    
    # # when  the letter is "B", AND the number in the first position in the first line of the board is equal to the number called,
    # #replace the number in the first position in the first line by X => this is ridiculously too much, I need to find another way, 
    #   when @letter == "B" && board[1][0][0] == @number 
    #     board[1][0][0] == "X"
    #   when @letter == "I" && board[1][0][1] == @number 
    #     board[1][0][1] == "X"
    #   when @letter == "N" && board[1][0][2] == @number 
    #     board[1][0][2] == "X"
    #   when @letter == "I" && board[1][0][3] == @number 
    #     board[1][0][3] == "X"
    #   when @letter == "I" && board[1][0[4] == @number 
    #     board[1][0][4] == "X"
    # end


# Refactored Solution
#letter_b = board.collect {|numb| numb[0]}
#letter_i = board.collect {|numb| numb[1]}
#letter_n = board.collect {|numb| numb[2]}
#letter_g = board.collect {|numb| numb[3]}
#letter_o = board.collect {|numb| numb[4]}


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

new_game = BingoBoard.new(board)
new_game

#Reflection
# OK, I have spent a lot of time on this. Right now, I am frazzled and can't think about doing the method
# I am still struggling but I came a long way with two weeks ago when I couldn't even start the solo challenge.
# •	How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# The most difficult thing was to understand what was asked. I worek this on several sessions and it help clarified the pseudocode. I like to use the pseudocode within my block. I believe it makes it easier to know where we are in our steps and also to debug it.
# •	What are the benefits of using a class for this challenge?
# I had two methods and they were referring to the same variables which were defined outside of each individual methods.
# •	How can you access coordinates in a nested array?
# By using index position. letter_b = [board[0][0], board[1][0], board[2][0], board[3][0], board[4][0]]
# By using the collect method: letter_b = board.collect {|numb| numb[0]}
# •	What methods did you use to access and modify the array?
# .each To access
# .map! to modify
# .map to access and create a new.
# •	Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I learned about 
# .collect: letter_b = board.collect {|numb| numb[0]}
# .fetch: array.fetch(0) {|x| if x.kind_of (Array) x {|inner| inner == number}
# .find array.find {|x| x == number}
# .bsearch_index: to search the index of a value
# .find_index: to get the index of a value
# •	How did you determine what should be an instance variable versus a local variable?
# If I didn’t have to use the variable outside a method, I didn’t made it an instance variable. My letter_b, letter_i… did not need to be called outside my method find_number
# •	What do you feel is most improved in your refactored solution?
# Read the Ruby docs and you will find new easy to apply methods.

