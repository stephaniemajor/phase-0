def fibonacci(index)
  # Create an array of fibonacci number up to the index given
  if index < 0
    print "The number must be at least 0"
  elsif index == 0
    print "The fibonacci value of that position is 0"
  elsif index == 1
    print "The fibonacci value of that position is 1"
  else
    arry_num = (2..index).to_a
    n_1 = 1
    n_2 = 0
    fibo_value = 0
    arry_num.each {|x|
      fibo_value = (n_1) + (n_2)
      n_2 = n_1
      n_1 = fibo_value
    }
    return "The fibonacci value of that position is " + fibo_value.to_s

  end
end

puts fibonacci(-1)
puts fibonacci(0)
puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)