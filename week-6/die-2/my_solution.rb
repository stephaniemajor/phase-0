# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input:what each sides a die has
#Output: the number of sides, a random side for a roll
# Steps:
#create a class
# 
#create an instance variable for each different sides
#Create an argument error if no elements were given
#create a count of elements in the array to get the number of sides


# Initial Solution

class Die
  def initialize(labels)
    if labels.any?
       @labels = labels
    else
      raise ArgumentError.new("You did not define one or more sides")
    end
  end

  def sides
    sides = @labels.count
    return sides
  end

  def roll
    roll = @labels[rand(@labels.length)] 
  end
end

die = Die.new(["A", "B", "C", "D","E", "F"])
puts die.sides
puts die.roll


# Refactored Solution
# I don't think I can do the attrinute accessor/reador here because I have some specific method for each of them. One to count the sides and the other one to select aramdom side 
#Class Die
#  attr_accessor :sides
#  attr_reader :sides, :roll
# def initialize(labels)
#    @labels


# Reflection
# •	What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# A new instance variable was created, labels. It has an accessor attribute. The sides instance variable used to have the attribute: accessor in the first version, now it is an attribute reader.
# •	What does this exercise teach you about making code that is easily changeable or modifiable? 
# It is scary easy. We should not overthink this but just do it. 
# •	What new methods did you learn when working on this challenge, if any?
# If_any? The random method for strings
# •	What concepts about classes were you able to solidify in this challenge?
# None
