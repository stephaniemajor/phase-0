# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 3.5 hours on this challenge.

# 0. Pseudocode

# Input: the number of sides and the color of the die
# Output: the number of sides, a random number for a roll between 1 and the number of sides and a color
# Steps:creat instance variables, one for the number of sides, one for the color
# establish a maximum range for the roll
# Create an argument error if the number of sides is less than 0



# 1. Initial Solution

class Die
  def initialize(sides, color="white")
    if sides <1 
      raise ArgumentError.new("Sides is less than 1")
    end  
    @sides = sides
    @color = color
  end

  def sides
   return @sides
  end

  def roll
    return 1 + rand(@sides)
  end
  def color
    return @color
  end  
end
die = Die.new(6,"black")
puts die.sides
puts die.roll
puts die.color




# 3. Refactored Solution
#Too tired.

# 4. Reflection
# •	What is an ArgumentError and why would you use one?
# Is when you pass an argument that is wrong 
# •	What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# The ran method to give a range with a maximum number
# •	What is a Ruby class?
# A class is a blueprint. Something you create once. It provides methods
# •	Why would you use a Ruby class?
# To access methods available on several objects within a class. This is much more efficient than having to write methods for each objects
# •	What is the difference between a local variable and an instance variable?
# A local variable resides inside a method and cannot be called outside the method.  An instance variable can be accessed anywhere inside a class even within a method. The instance variable as a @ in front of it.
# •	Where can an instance variable be used?
# Everywhere inside a class.