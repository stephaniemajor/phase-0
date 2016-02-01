# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


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

# 4. Reflection
