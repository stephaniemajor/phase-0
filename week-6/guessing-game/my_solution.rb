# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:an integer for a guess and an integer for an answer
# Output: a symbol (:high, :low, :correct) and a bolean
# Steps: 
#Create a class with an argument error if the input in not an integer
# define a method  for the guess with an argument error if the input is not an integer
# def a method for the bolean which will break the loop

# Initial Solution

class GuessingGame_old
#Create a class with an argument error if the input in not an integer
  def initialize(answer)
      @solved = false
    if answer.is_a?(Integer)
      @answer = answer
 
    else
      raise ArgumentError.new("Your must provide an integer")  
    end  
  end

# define a method  for the guess (high, low, correct)with an argument error if the input is not an integer and  
  def guess(guess)
    if guess.is_a?(Integer)
      @guess = guess
    else
      raise ArgumentError.new("You must provide an integer")  
    end 
    if @guess > @answer
      @solved = false
      puts "Your guess is high. " 
      puts "Is it solved?" 
      puts @solved
      return :high
    elsif @guess == @answer
 # Changed the instance variable if it is true
      @solved = true
      puts "Your guess is correct. "
      puts "Is it solved?" 
      puts @solved
      return :correct
    else
      @solved = false
      print "Your guess is low. "
      puts "Is it solved?" 
      puts @solved
      return :low
    end  
  end  
  
  def solved?
    return @solved
  end
end  

game = GuessingGame_old.new(10)
game.guess(5)
game.guess(10)
game.guess(20)
game.solved?


# Refactored Solution
# I was wondering if I could use a ternary operation but not really because I have an elsif
# @guess > @answer ? puts "Your guess is high. Is it solved?" @solved return :high : 
# If I only had a if and else, I believe it could have worked.

# Then, I tried to use a ternary operation for my raise argument error. But I am getting a syntax error
# answer.is_a?(Integer) ? @answer = answer : raise ArgumentError.new("Your must provide an integer")  
#So, the only thing I see is to combine my puts
class GuessingGame
#Create a class with an argument error if the input in not an integer
  def initialize(answer)
      @solved = false
    if answer.is_a?(Integer)
      @answer = answer
     else
      raise ArgumentError.new("Your must provide an integer")  
    end  
  end

# define a method  for the guess (high, low, correct)with an argument error if the input is not an integer and  
  def guess(guess)
    if guess.is_a?(Integer)
      @guess = guess
    else
      raise ArgumentError.new("You must provide an integer")  
    end
    @solved = false
    if @guess > @answer
      puts "Your guess is high. Is it solved? #{@solved}"
      return :high
    elsif @guess == @answer
      # Changed the instance variable if it is true
      @solved = true
      puts "Your guess is correct. Is it solved? #{@solved}" 
      return :correct
    else
      print "Your guess is low. Is it solved? #{@solved}" 
      return :low
    end  
  end  
  
  def solved?
    return @solved
  end
end  

game = GuessingGame.new(10)
game.guess(5)
game.guess(10)
game.guess(20)
game.solved?


# Reflection
# •	How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# It reads (and write) the way we think about it. 
# •	When should you use instance variables? What do they do for you?
# When we want to access it throughout several methods within a class or within a sub class
# •	Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# In my mind, flow control is about if.(although we could use the while, unless and case but I prefer the if) if this is happening, go on or do that, if something else is happening, go there or do that, otherwise, go or do that. It is logic to me, therefore, it make sense. My major problem is about putting this into practice.
# •	Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# The symbols are unique. It is a pre-defined value that cannot be changed.
# 