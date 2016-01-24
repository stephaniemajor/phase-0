# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
# Give a value to the first element in index
# create a variable big
#do a each on the array and see condition to find the biggest
# Your code goes here!
def largest_integer(list_of_nums)
  if list_of_nums.empty? 
     return nil
  else  
    big=list_of_nums[0]
    list_of_nums.each { |x| 
      if x > big
        big=x
      end  
    }
    return big
  end
end