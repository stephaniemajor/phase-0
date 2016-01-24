# Concatenate Two Arrays

# I worked on this challenge by myself.
# create a new array
# push one array onto the new array

# Your Solution Below

def array_concat(array_1, array_2)
  concat = Array.new
  array_1.each { |elem| concat.push(elem) }
  array_2.each { |elem| concat.push(elem) }
  return concat
end


#  concat = Array.new
#  concat.push(array_1)
#  concat.push(array_2)
#  return concat.flatten