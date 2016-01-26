# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a an empty container (hash) with a type of food and its quantity
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: a hash
def create_list
    Hash.new()
end
puts create_list
list1=create_list
list2=create_list

# Method to add an item to a list
# input: item name and optional quantity
# steps:Add items to the list
# output: List of items
def add_to_list(item,quantity,list)
  list[item]=quantity
end  
p add_to_list("apple",2,list1)
p add_to_list("cherry",15,list1)
p add_to_list("banana",5, list1)
p list1

# Method to remove an item from the list
# input:itemand list
# steps:create a method to remove an item
# output: removed item

def remove_from_list(item,list)
  list.delete(item)
end
p remove_from_list("banana",list1)
p list1

# Method to update the quantity of an item
# input:item , quantity, list
# steps: create a method to modify the quantity of an item
# output: new quantity
def update_list(item,quantity,list)
  list[item]=quantity
end  
p update_list("cherry",2,list1)
p list1

# Method to print a list and make it look pretty
# input:item,list
# steps:create a method to print the grocery list
# output:  a printed list
def grocery_list(list)
  string=""
  list.each {|item, quantity| 
    string=string  + item.to_s + ":" + quantity.to_s + "   "
  }
  return string  
end
puts grocery_list(list1)

#•	What did you learn about pseudocode from working on this challenge?
#There is a technique to it. When we need to put the input, we put the argument we need
#•	What are the tradeoffs of using Arrays and Hashes for this challenge?
#The hashes give a structure, Both have built in methods.
#•	What does a method return?
#It returns what we want, it depends on the method. Some don’t return anything, they transform.
#•	What kind of things can you pass into methods as arguments?
#Strings, arrays, integer, float
#•	How can you pass information between methods?
#We call a method.
#•	What concepts were solidified in this challenge, and what concepts are still confusing?
#I am a bit clearer on the arguments needed on one method. I am still forgetful to specify to return a result from an each iteration




