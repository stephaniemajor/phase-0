# Pad an Array

# I worked on this challenge with a developer outside bootcam
# I feel I need one on one tutoring on this topic. This is very difficult for me.
# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?an array, a minimum # of elements in the array, a pad value
# What is the output? an array with at least the number of element set as minimum
# What are the steps needed to solve the problem? 
# Create a method if array is too small, add "value"s in the array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    to_add = min_size.to_i - array.length
    while to_add > 0
      array.push(value)
      to_add -= 1
    end  
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  # very similar to destructive method but will create a new array
  padded_array = []
  array.each {|item| padded_array.push(item)} # copying original array into the new one
   
  if padded_array.length < min_size
      to_add = min_size.to_i - padded_array.length
      while to_add > 0
        padded_array.push(value)
        to_add -= 1
      end
  end
  return padded_array 
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
      array.push(value)
  end
  return array
end
def pad(array, min_size, value = nil) #non-destructive
  padded_array = Array.new(array)
   
  while array.length < min_size
      array.push(value)
  end
  return padded_array 
end

# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# I needed help. I started all wrong, trying to think like a computer, i/o a person. then, when prompted by my tutor, I regain my human brain.
# Once you had written your pseudocode, were you able to easily translate it into code? 
# No, this was difficult. I was close often times but not quite there yet and needed help to solve it. 
# What difficulties and successes did you have? I refractore the copying the array by myself w/o help. everything else was difficult. 
# Was your initial solution successful at passing the tests?
# No, I didn't show any errors at forts, then 8 errors.
# If so, why do you think that is? 
# Wrong placement of variable, forgoyt to return a result, and so on
# If not, what were the errors you encountered and what did you do to resolve them?
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# The first one, my tutor tol me by ... oh! we can do that see??? oops, he wasn't supposed to. This being said, his "awh moment help me realise something I don't think I would have realized by myself.
# How readable is your solution? 
# Very simple, very readable.
# Did you and your pair choose descriptive variable names?
# I named all the variables myself and I believe they are descritive
# What is the difference between destructive and non-destructive methods in your own words?
# The non destructive doesn't change the original array while the other one, changes it for good, no going back.