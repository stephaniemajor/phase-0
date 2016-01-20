puts 'What is your name?'
name=gets.chomp
puts name+', what is your middle name?'
middle_name=gets.chomp
puts 'Welcome to our humble house dear '+name+' '+middle_name+'!'

puts 'What is your favorite number?'
favorite_number=gets.chomp
bigger_number=favorite_number.to_i+1
puts bigger_number.to_s + ' seems to be better because it is bigger'


#•	How do you define a local variable?
#A local variable lives inside a method (part of the body) and cannot leave it. You cannot call a local variable
#•	How do you define a method?
#A method is a block of codes and needs an object like, for example a string, an integer, a float to run. 
#•	What is the difference between a local variable and a method?
#A local variable resides inside the method itself. You can call a method from outside the method but you cannot call a variable outside the method.
#•	How do you run a ruby program from the command line?
#Type in: ruby name_of_ file.rd
#•	How do you run an RSpec file from the command line?
#Type in : rspec name_of_ file.rd
#•	What was confusing about this material? What made sense?
#I was confused about how to submit the links for exercises 4.3.1 and 4.3.2

#https://github.com/stephaniemajor/phase-0/blob/master/week-4/address/my_solution.rb
#https://github.com/stephaniemajor/phase-0/blob/master/week-4/math/my_solution.rb
