def print_bottles(number)
  array_number = (0..number).to_a
  n = array_number.length
  array_number.each { |x|
    n -= 1
    if n == 0
      puts "No more bottles of beer on the wall"
    else
      puts n.to_s + " bottles of beer on the wall"
    end
  }
end
print_bottles(5)