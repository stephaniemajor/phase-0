# I worked on this challenge by myself.
# This challenge took me 0.5 hours.


# Pseudocode
# Create a method taking an array of integers returning a new array
# Multiples of 3 should be replaced with the string "Fizz"
# Multiples of 5 should be replaced with the string "Buzz"
# Multiples of 15 should be replaced with the string "FizzBuzz"

# Initial Solution
# Create a method taking an array of integers returning a new array
def super_fizzbuzz(array)
  return array.map {|i| 
    # Multiples of 15 should be replaced with the string "FizzBuzz"
    if i % 3 == 0 && i % 5 == 0
      "FizzBuzz"
    # Multiples of 3 should be replaced with the string "Fizz"
    elsif i % 3 == 0
      "Fizz"
    # Multiples of 5 should be replaced with the string "Buzz"
    elsif i % 5 == 0
      "Buzz"
    else
      i
    end
  }
 
end
puts super_fizzbuzz([1,3,4,5,6,80,90,75,84,86,27,30])


# Refactored Solution
# I don't see any refractoring here


# Reflection
# I am happy I did my cheat sheet code first!
# # It was easier than I thought?
# What concepts did you review or learn in this challenge?
# I reviewed the iteration
# What is still confusing to you about Ruby?
# I am Ok with this exercise
# What are you going to study to get more prepared for Phase 1?
# I will do at least one other Ruby exercise