# Leap Years

# I worked on this challenge Thomas Farr

# Your Solution Below
# follow criteria for validity
# use If and elsif
def leap_year?(year)
  
  if year % 4 == 0 and year % 100 != 0 and 
    return true
  elsif 
    year % 400 == 0
   return true
   else 
    return false
  end
end