# Your Names
# 1) Stephanie Major
# 2)Kenton Lin

# We spent 1 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, count_of_serving)
  baked_goods = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if baked_goods.has_key?(item_make) == false 
  
  serving_size = baked_goods[item_to_make]

  portion_left_over = count_of_serving % serving_size

  if portion_left_over == 0
    return "Make #{count_of_serving / serving_size} of #{item_to_make}"
  else
    return "Make #{count_of_serving / serving_size} of #{item_to_make}, you have #{portion_left_over} leftover servings. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# •	What did you learn about making code readable by working on this challenge?
# I learn to pay attention to the variable, array, and hash names. It could be confusing to figure out what is happening otherwise. I learned it is easy to make code complicated.
# •	Did you learn any new methods? What did you learn about them?
# No. I already knew about the raise argument. Our guide though mentioned we could have used “unless” instead of if == false, but, I prefer if ==false and he said several people do.
# •	What did you learn about accessing data in hashes? 
# We already knew that you just put the hash name square bracket and put the key in the bracket to access the value => serving_size = baked_goods[item_to_make]
# •	What concepts were solidified when working through this challenge?
# The modulo. I am having difficulty grasping this one…
