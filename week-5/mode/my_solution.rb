# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
#  max_count = count_hash.max {|key,q| q } it did work in irb but it brought the following errors from rspec
#NoMethodError:
#      undefined method `>' for ...
# we also tried def mode(array)
#   count_hash = Hash.new {|num, freq| array.count(freq); num}
#   count_hash.max_by {|num, freq| freq}
# end
# but it returned nil value



def old_mode(nbr_array)
    # create a new hash with values set as zero
    count_hash = Hash.new(0)
   
    #update the quantity
    nbr_array.each { |key| count_hash[key] += 1 }
   
    # find the highest count in our hash 
    max_count = 0
    count_hash.each {|key,q| 
        if q > max_count
            max_count = q
        end    
    }

    # return an array with all keys that have the highest value
    pairs = count_hash.find_all {|key,q| 
        q == max_count
    } 
    
    # return the key values for the max quantity
    return pairs.map {|array| array[0]}
end

nbr_array=[1,2,3,3]
puts old_mode(nbr_array)

#do an iteration to see an the value =1


# 3. Refactored Solution

def mode(nbr_array)
    # create a new hash with values set as zero
    count_hash = Hash.new(0)
   
    #update the quantity
    nbr_array.each { |key| count_hash[key] += 1 }
   
    # find the highest count in our hash  and return an array with all keys that have the highest value
    pairs = count_hash.find_all {|key,q| 
        q == count_hash.values.max
    } 
    
    # return the key values for the max quantity
    return pairs.map {|array| array[0]}
end


# 4. Reflection
# This was a difficult assignment for us. We are having difficulty to reason the problem and breakit down into pieces. 
# the upside of this one is that I learned to work with irb more. 
# I am, perswonally, coming from a long way in this, but today, I feel I have done a few steps forward.
# Which data structure did you and your pair decide to implement and why?

# We decided to create a hash then give each key a value for its frequency.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# It was easier after we broke it down into pseudocode but still difficult to get the correct answer.

# What issues/successes did you run into when translating your pseudocode to code?

# We were having issues running into syntax and correct implementation of keys and values and the output of the results.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We used .each .map and .find_all. All of these were difficult to implement through the code.