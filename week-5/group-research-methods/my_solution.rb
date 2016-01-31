# Research Methods

# I spent 1 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(array, thing_to_find)
  array.grep(/#{thing_to_find}/)
end

def my_hash_finding_method(hash, thing_to_find)
  selection = hash.select  {|name,age| age == thing_to_find }
  return selection.map {|array| array[0]}
end

# Identify and describe the Ruby method(s) you implemented.
# I used the grep method for the array to return an array of elements with a certain characteritic
# I used a select method to get the specific characteristic chosen for the hash value. 
# Then I used the map method to create a new array showing the key only of those with the specific value


# Person 2
# Pseudocode:
# -input: array and an integer to be added into the area
# -output: new area, overwriting old array, with new number of pets desired
# -steps
#   -define a method with two arguments (string, integer)
#   -insert the integer in correct location in string.
#   -return the new array with passed in integer
  
def my_array_modification_method!(source, num_of_pets_wanted)
  source.map! do |x|
    if x.is_a?(Integer)
      x + num_of_pets_wanted
    else
      x
    end
  end
  return source
end


# Pseudocode:
# -input: hash and an integer to be added into current value
# -output: overwritten hash with new value for corresponding key
#   -define a destructive method to modify hash values
#   -over each key pair values in hash combine new age value added to old value
#   -return the new hash with passed in values
  
def my_hash_modification_method!(source, years_to_add)
  source.each do |name, old_age|
    source[name] = old_age + years_to_add
  end
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# -used .is_a?(Integer) -> this will go through each element in the array and decide if it is an Integer (true or false). If it is true, then it will apply the code block to that element.
# -used .each over a hash to modify the age of pets. Starts by looking at each key and then modifying the corresponding value, old_age, by adding years_to_add.



# Person 3
def my_array_sorting_method(source)
  # sort by converting the integers, if there are, into strings for the purpose of sorting only
  return source.sort {|a,b| a.to_s <=> b.to_s }
end
print my_array_sorting_method(i_want_pets)

def my_hash_sorting_method(source)
   # sort the array by pet's age
   source.sort_by {|n,a| a}
end
print my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# the sort method by default first put the integers in increasing order, than the strings starting with a capital letter in alphabetical order, the other strings
#the sort_by is more specific wgich is needed for a hash considering we have a key/value pair
#We can use the sort_by for array too and it is more perfomant than the sort  . so more adapted for larger arrays.
# I tested my method with irb 
# the rspec is working

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.reject! {|s| s.to_s.include?(thing_to_delete.to_s) }
end

puts my_array_deletion_method!(i_want_pets,"0")

def my_hash_deletion_method!(source, thing_to_delete)
  source.reject! {|n,a| n == thing_to_delete }
end
puts my_hash_deletion_method!(my_family_pets_ages,"George")


# Identify and describe the Ruby method(s) you implemented.
# Used the reject method combined with include
#Used the same reject method with include and made it simpler because we nom it will be a specific name
#I test all my methods with irb


# Person 5
def my_array_splitting_method(source)
  new_arr = Array.new(2)
  new_arr[0] = source.select {|item| item.is_a?(Integer) }
  new_arr[1] = source.reject {|item| item.is_a?(Integer)}
  return new_arr
end

# INPUT: An array of objects
# OUTPUT: An array with two elements
#   The first element is an array containing all the integers from the input
#   The second element is an array containing all the non-integers.
#
# An explanation of the primary methods used:
#   Calling Array.new(x) will return an array of length x populated with nil
#   values.
#
#   .select can be called on an array in the form
#     array.select { |item| block }
#   Where item is the variable name you want to have assigned the current value
#   being looked at, and block is a code block that returns a boolean.
#   For .select, it iterates through the array and returns, in an array, all
#   items from the original array that met a true condition in the block.
#   
#  Conversely, .reject works the same way, except it returns all the elements
#  that return false in the block.
#
#  In the example above, for each |item| in array, the .select and .reject
#  methods are checking if the item is of a type Integer, which is seen in
#  the code item.is_a?(Integer). 


def my_hash_splitting_method(source, age)
  new_arr = Array.new(2)
  new_arr[0] = source.select {|key,value| value <= 4 }.to_a
  new_arr[1] = source.reject {|key,value| value <= 4 }.to_a
  return new_arr
end

# INPUT: A hash with key-value pairs of type String-Integer
# OUTPUT: An array with two elements
#   The first element is an array of arrays, where each array is of the form
#   name-age, and all arrays here contain elements where the key was <= 4.
#   The second element is an array of arrays containing everything else.
#
# An explanation of the methods used can be seen above in 
# my_array_splitting_method. The only addition is the to_a method, which
# converts objects into arrays where key => value is converted to [key,value]


# There isn't a special trick to reading the documentation, since it's mostly
# a matter of understanding where everything is. The start of every search
# should always be to google for "ruby [class]" which is the class of object
# you're trying to manipulate. After reaching the ruby docs, the list of
# methods can be seen on the left-hand side under "Methods". It is important
# to read and see what the return value of each statement is on the right-side
# of the arrow within each function title. Multiple repetitions of each method
# means there are multiple ways of calling this function. After that, you just
# have to read the description, look at the examples, and test out the methods
# in an interpreter.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# the psedocode pretty much do the trick already
# What was your experience like researching for Ruby methods. Did you find them quickly? How easy was it to implement once you found one?
# We have been researching Ruby methods for the last two weeks. I am getting more familiar with the Ruby docs. Yes, they are easy to implement, 
# what is not easy is to remember to split the steps... 
# Did you find any methods you thought would work but didn't? What made you think they would work? How did you determine they didn't?
# if they were in Ruby docs 2.2.3, they worked. They have been tersted and accepted.
# How does the method you chose iterate through and modify information in a data structure?
# Method # 3: I chose the sort method which go through each element and compare them to another. There is a order by default: 
# First put the integers in increasing order, than the strings starting with a capital letter in alphabetical order, the other strings
#Is the method you implemented destructive or non-destructive?
# Non destructive method in a sense that all the original elements are still there unchanged, only there order has changed.
# What did you learn from reading your accountability-group member's explanations on their solutions?
# there are several ways to see a problem. I found out the .include? method. 
# I was wondering myself how to split an array and I believe one person in our group did a MARVELOUS job at explaining it
# What did you learn about researching and explaining your research to others?
#Nothing in particular, same as doing pseudo-code.
#
#