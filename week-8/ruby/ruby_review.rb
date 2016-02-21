# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# # Create a method to check if a number is part of the Fibonacci sequence
# Input is a number.
# Output: Boolean: true or false

# Initial Solution

def is_fibonacci?(num)
  if num < 0
    return false
  elsif num < 4
    return true
  else
    n_2 = 2
    n_1 = 3
  
    while n_1 + n_2 <= num 
      if num == n_1 + n_2
        return true
      else
        n = n_1 + n_2
        n_2 = n_1
        n_1 = n
      end
    end  
    return false
  end
end



# Refactored Solution







# Reflection