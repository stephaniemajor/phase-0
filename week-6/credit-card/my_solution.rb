# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Jillian Campbell.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: true or false
# Steps:
#Define a class credit card
# 
# Define a method to convert the credit card number into an array - no empty space
#Define a method to double every other integer starting from the end
#create a method to split the integer if they are two digits
#create a method to sum the integer
#if the sum is a multiple of 10, it return true otherwise return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(cc_number)
#     @cc_number = cc_number
#     @digits = digits
#     @double = double
#     @split = split_double_digit
#       if @cc_number.length != 16 
#         raise ArgumentError.new("Credit number must be 16 digits") 
#       end 
#   end
#   def convert
#     @digits = @cc_number.to_s.split("").map(&:to_i)
#   end

#   def double
#   @double =  @digits.each_with_index do |x,index| index % 2 ? x : x * 2
#     end
#   end    

#   def split_double_digit
#     @split = @double.to_s.split("").map(&:to_i) {|x|  x >= 10 }
#   end
  
#   def check_card 
#     sum = 0
#     @split.each {|n| sum += n}
#     puts sum % 10 == 0 ? "True" : "False"
#   end
  
# end  
# credit_card = CreditCard.new(4408041234567906)
# puts CreditCard.check_card


#Mentored version => we got help from a programmer
class CreditCard
   
  def initialize(cc_number)
     @cc_number = cc_number.to_s
   
      if @cc_number.length != 16 
        raise ArgumentError.new("Credit number must be 16 digits") 
      end 
  end
    
  def get_sum
    digits = []
    @cc_number.each_char { |c| digits << c.to_i } 
    
    doubled = ""  # empty string as starting value
    (0..15).each { |index|
      if index % 2 == 0 
        doubled += (digits[index]*2).to_s
      else 
        doubled += digits[index].to_s
      end
    }
    
    sum = 0
    doubled.each_char { |c| sum += c.to_i }     
    return sum
  end
      
  def check_card 
    sum = get_sum
    puts sum % 10 == 0 ? "True" : "False"
  end
  
end  

credit_card = CreditCard.new(4408041234567906)
puts credit_card.check_card


#Reflection:
# What was the most difficult part of this challenge for you and your pair?
# Put in practice what we knw we were supposed to do. We seemed to get to many methods. 
# WE created too many instance variable. We also had difficulty with mose of our code.
# What new methods did you find to help you when you refactored?
# .each_char Thanks to our method. We tried the gsub but did not understand it
# What concepts or learnings were you able to solidify in this challenge?
#create instance variable how to call the method outside a class. Set our arrays, string,variable to zero at first.