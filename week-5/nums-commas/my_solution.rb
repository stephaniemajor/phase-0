# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? the positive integer converted into a string with a comma formatted number
# What are the steps needed to solve the problem? 
# find cases where no comma is needed
# loop though the number in tranches of 1000 to add the comma and the numbers right to the comma


# 1. Initial Solution
  # return a string when n< 1,000
# def separate_comma(n)
#   if n < 1000
#     int_n = n.to_s 
#     return int_n
#   else
#     # does an iteration so every time it is divisible by 1,000  it adds the result to a string
#     while n > 1000
#       reliquat = n % 1000
#       n = n/1000
#         int_n = n.to_s + "," + reliquat.to_s
#       return int _n
#     end
#   end
# end

# 2. Mentored Solution
def separate_comma(n)
# does an iteration so every time it is divisible by 1,000  it adds the result to a string
  string_n = ""
  while n > 0
    reliquat = n % 1000
    n = n/1000
    if n > 0
      string_n = "," + padded_nbr(reliquat) + string_n
    else
      string_n = reliquat.to_s + string_n
    end
  end
  return string_n
end

def padded_nbr(num)
  if num < 10
    return "00" + num.to_s
  elsif num < 100
    return "0" + num.to_s
  else
    return num.to_s
  end
end

puts separate_comma(1235467)
puts separate_comma(1)
puts separate_comma(0)
puts separate_comma(1000)
puts separate_comma(1000000)
puts separate_comma(1234567891)

# 3. Reflection
# My own solution isn't working.
#For one, My while loop wasn't working right. Then what will happen after running the loop, the number divided by 1,000 is smaller than zero: it will erase all I have created already.

# I have worked this one by using the irb. This helped me to reason the problem. Working logics is my weakness and I need to work as much problems as I can. 
# Alas, I am working full time and already spending more than 30 hours on devbootcamp. The best thing for me would be to re-do all the exercices over and over again until the logic sinks in...

# What was your process for breaking the problem down? What different approaches did you consider?
# I put examples on paper, and tested them in irb. Once I got to a roadblock, I got my mentor to review it all and work the solution with me. He is very patient!
# Was your pseudocode effective in helping you build a successful initial solution?
# Extremely
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I have put 5 hours already on this if not more. I am drained. I believe at this point, I should spend time reviewing the logic of what I created with my mentor in order to internalize it.
# How did you initially iterate through the data structure?
# I used the while, I did contemplate to use the loop and the case. At first, I was even wondering if I should  count the digits using length, then use indexing but, it seemed too complicated and I went for a numerical solution i/o string solution.
# Do you feel your refactored solution is more readable than your initial solution? Why?
# Not refractored.