# I worked on it by myself
# I spent 2.5 hours on it
# create accountability group
# Steps
# 1) Create a list: I copied the list created by another member of my accountability group. Having time, I would have converted the list from excel to csv.
# 2) break the list into smaller list
#3) Give each nested list a number by using a hash
#4) change the number of the list to start with 1 and not 0 +> I haven't found out how to achieve it but I have spent enough time as it is 
#5) Change it to make sure no group is smaller than 4 => got help from another member of my accountability group
#6) make it random => I haven't had a time to do it


 # 1) Create a list
 all_names = ['Alivia Blount', 'Alyssa Page', 'Alyssa Ransbury', 'Andria Reta', 'Austin Dorff', 'Autumn McFeeley', 'Ayaz Uddin', 'Ben Giamarino', 'Benjamin Heidebrink', 'Bethelhem Assefa', 'Robert Reith', 'Dana Breen', 'Brett Ripley', 'Rene Castillo', 'Justin J Chang', 'Che Sanders', 'Chris Henderson', 'Colette Pitamba', 'Connor Reaumond', 'Cyrus Vattes', 'Thomas Farr']
 
def acct_groups(list_of_names)
  # preference for group of 5  and not wanting groups smaller than 3
  x = list_of_names.size
  if x%5 == 0
    size = 5
  elsif x%5 != 0
    size = 3
  end
  
  # break the list into smaller list
  group = list_of_names.each_slice(size).to_a

  # Give each nested list a number by using a hash
  a_group = Hash.new
  group.each_with_index {|i,a| a_group[i] = a}
  return a_group
end

print acct_groups(all_names)

# Reflection
# •	What was the most interesting and most difficult part of this challenge?
# I have been meaning to look how to create a hash with nested array for quit some time
# •	Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Oh yes!, I took big steps this weekend. Both in how to break down a problem and in irb
# •	Was your approach for automating this task a good solution? What could have made it even better?
# I could have make it random. I am sure I would have found a way, given more time
# •	What data structure did you decide to store the accountability groups in and why?
# A hash which is not the prettiest but, again, given time, this is what I am presenting
# •	What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I used a few built in method that I believe are rendering my code simpler


