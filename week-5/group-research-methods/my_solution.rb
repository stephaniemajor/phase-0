# Research Methods

# I spent 1 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(array, thing_to_find)
  array.grep(/#{thing_to_find}/)
end

def my_hash_finding_method(hash, thing_to_find)
  selection = hash.select  {|name,age| age == thing_to_find }
  return selection.map {|array| array[0]}
end

# Identify and describe the Ruby method(s) you implemented.
# I used the grep method for the array to return an array of elements with a certain chracteritic
# I used a select method to get the specific caracteristic chosen for the hash value. 
# Then I used the map method to create a new array showing the key only of those with the specific value


# Person 2
def my_array_modification_method!(duplicate_array, thing_to_modify)
  #duplicate _array =I_want_pets.dup 
  #duplicate_array.map.select {|elem| integer(elem)}
end

def my_hash_modification_method!(source, thing_to_modify)
  #source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  #source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   #source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  #source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  #source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  #source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  #source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#