# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Thomas Farr.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:array of numbers
# Output: sum of the array
# Steps to solve the problem.
# sum each number by other numbers
#

# 1. total initial solution
##def total(array)
#     array.each do |x| total += x
#    end
#def sentence_maker(array)
#  array.to_s
#    return array.join(" ") + "."
#end
#end
#array.to_s   {|x| x + x + 1 }
#def total(array)
#  array.to_s
#  array.each do |x| 
#    x == x + (x + 1)
#    return x 
#  end
#end

# 3. total refactored solution
def total(array)
  sum = 0
  array.each {|x| sum += x.to_i}
  sum 
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array of string
# Output: a sentence with first letter capitalized
# Steps to solve the problem.
#trial and errors
# research on the internet


# 5. sentence_maker initial solution

# don't remember

# 6. sentence_maker refactored solution
def sentence_maker(array)
  array.to_s
  array[0] = array[0].capitalize
  return array.join(' ') + '.'
end
