# I worked on this challenge with Thomas Farr


# Your Solution Below
# one criteria about all sides equal to zero is false
#one condition about all equal sides is equilateral
#one condition about impossible triangle is false
def valid_triangle?(a, b, c)
  if a == 0 or b == 0 or c == 0
    return false
  elsif a == b and b == c and a == c
    return true
  elsif a + b < c or a + c < b or b + c < a
    return false
  else
    return true
  end
end