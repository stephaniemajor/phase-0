def factorial(number)
  arr_number = (1..number).to_a
  factor = 1
  arr_number.each {|x|
    factor = x * factor
  }
  return factor
end
puts factorial(5)