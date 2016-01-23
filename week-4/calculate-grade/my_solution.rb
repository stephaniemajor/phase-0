# Calculate a Grade

# I worked on this challenge with: Thomas Farr.


# Your Solution Below
# use if and elsif for the range
# don't forget equal signs
# don't bother the minus
def get_grade(x)
  if x >= 90 
    return "A"
  elsif x >= 80 and x < 90
    return "B"
  elsif x >= 70 and x < 80 
    return "C"
  elsif x >= 60 and x < 70 
    return "D"
  else 
    return "F"
  end
end  
