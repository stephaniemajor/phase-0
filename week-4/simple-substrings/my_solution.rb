# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below
# need to divide my string into words
# one word contain CA
# read CA as uppercase
# def welcome(address)
#   divide = address.split()
#   contain_CA = false
#   divide.each {|x| 
#     if x.upcase == "CA" || x.upcase == "CA," then contain_CA = true end }
#   if contain_CA == true
#     return "Welcome to California"
#   else
#     return "You should move to California"
#   end  
# end
  
  def welcome(address)
    if address.include?("CA")
      return "Welcome to California"
    else
      return "You should move to California"
    end  
  end
  puts welcome("10614 orchard, CA, poway, 90264")