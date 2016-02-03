# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]

# attempts:
# 1) array[1][2][0]
# 2) array[1]  => ["inner", ["eagle", "par", ["FORE", "hook"]]] 
#3) array[1][2]  => nil 
#4) array[1][0] => "inner" 
#5) array[1][1][2]  => ["FORE", "hook"]
#6) array[1][1][2][0]  => "FORE" 


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# 1)hash[:outer][:inner]["almost"][3] => "congrats!" 


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# nested_data[:array][1][:hash] => "finished" 



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

#Base on the Ruby language, it is not a destructive way to attain it.
modified = number_array.map {|x| 
                  if x.kind_of?(Array) 
                    x.map {|inner| inner += 5}
                  else
                    x += 5
                  end
                  }
#Refractor:
    modified = number_array.map {|x| 
                  x.kind_of?(Array) ? x.map {|inner| inner += 5} : x + 5
    }
  
# Bonus:
# did not work on it together
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# Reflection:
# •	What are some general rules you can apply to nested arrays?
# Same as the regular arrays,  the difference is that you align the index for each of the nested arrays: array[1][1][2][0] will get you the value on index 0 of the 4th level, which was reached by going through the second index in the thirds level, which was reached by the first index of the second level which was reached by the first index at the first level.
# •	What are some ways you can iterate over nested arrays?
# Using an each method and a kind_of?(Array). The latter means are you finding an array object in the each, 
# •	Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# I wasn’t familiar with the kind_of? Method and my pair was. He took time to explain it to me. It was a good option because 1) it was given as an example, 2) it makes a lot of sense, it gets you to search for something in particular.
