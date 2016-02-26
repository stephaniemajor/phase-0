# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# Create specific values for non repetitive words


# Initial Solution
def specific_word(number)
  # Create specific values for non repetitive words
  case number
    when 0 then return "zero"
    when 1 then return "one"
    when 2 then return "two"
    when 3 then return "three"
    when 4 then return "four"
    when 5 then return "five"
    when 6 then return "six"
    when 7 then return "seven"
    when 8 then return "eight"
    when 9 then return "nine"
    when 10 then return "ten"
    when 11 then return "eleven"
    when 12 then return "twelve"
    when 13 then return "thirteen"
    when 14 then return "fourteen"
    when 15 then return "fifteen"
    when 16 then return "sixteen"
    when 17 then return "seventeen"
    when 18 then return "eighteen"
    when 19 then return "nineteen"
    when 20 then return "twenty"
    when 30 then return "thirty"
    when 40 then return "forty"
    when 50 then return "fifty"
    when 60 then return "fifty"
    when 70 then return "seventy"
    when 80 then return "eighty"
    when 90 then return "ninety"
    when 100 then return "one hundred"
    end
end

# For numbers with two digits, find the "dizaine" and the unit
def two_digit(number)
  dizaine = (number/10) * 10
  unit = (number % 10)
  if unit == 0
    return specific_word(dizaine)
  else
  return specific_word(dizaine) + " " + specific_word(unit)
  end
end

# create a method to return the result with the right sub method
def word(number)
  if number < 20
    return specific_word(number)
  else
    return two_digit(number)
  end
end

#testing my methods
# puts specific_word(0)
# puts specific_word(1)
# puts specific_word(15)
# puts two_digit(34)
# puts two_digit(50)

puts word(0)
puts word(1)
puts word(15)
puts word(34)
puts word(50)

# Refactored Solution






# Reflection