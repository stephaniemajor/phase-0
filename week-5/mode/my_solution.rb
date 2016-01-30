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



def mode(nbr_array)
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
puts mode(nbr_array)

#do an iteration to see an the value =1


# 3. Refactored Solution
#Did not have time to work on it



# 4. Reflection
# This was a difficult assignment for us. We are having difficulty to reason the problem and breakit down into pieces. 
# the upside of this one is that I learned to work with irb more. 
# I am, perswonally, coming from a long way in this, but today, I feel I have done a few steps forward.