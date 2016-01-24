# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
# create a variable  to count
# #use while  until high bound
# use loop on each element of the array and count
def count_between(list_of_integers, lower_bound, upper_bound)
  count=0
   list_of_integers.each { |num|
    if lower_bound <= num  && num <= upper_bound
      count = count + 1
    end  
  }
  return count
end