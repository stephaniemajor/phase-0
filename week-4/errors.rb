# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase="Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#The error is occuring in the file errors.rb file
# 2. What is the line number where the error occurs?
#The error occurs on line 16
# 3. What is the type of error message?
#This is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
#The interpreter says it did not expect "end-of input", rather it expected the keyword end
# 5. Where is the error in the code?
#the error occurs before line 16
# 6. Why did the interpreter give you this error?
#The while  needs an end word

# --- error -------------------------------------------------------

south_park='500 Main street, Montreal, Qc'

# 1. What is the line number where the error occurs?
#The error is occuring on line 36
# 2. What is the type of error message?
#It is an error in the code
# 3. What additional information does the interpreter provide about this type of error?
#there is a variable or a method that is undefined. the name is in the name
# 4. Where is the error in the code?
#The error is located where we have "south_part"
# 5. Why did the interpreter give you this error?
#The error is because there is not an assigned value to the variable south park

# --- error -------------------------------------------------------



# 1. What is the line number where the error occurs?
#The error occurred on line 51
# 2. What is the type of error message?
#It is an error in the code
# 3. What additional information does the interpreter provide about this type of error?
#The method "cartman" is undefined. The error is because there is no method
# 4. Where is the error in the code?
# In the method itself (or lack thereof)
# 5. Why did the interpreter give you this error?
#This is a method that has been named but not given a body and an end.

# --- error -------------------------------------------------------

def cartmans_phrase(arg1)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#The error occurred on line 66
# 2. What is the type of error message?
#It is an error in the code in the cartman_phrase
# 3. What additional information does the interpreter provide about this type of error?
#The error pertains to the arguments of the method and this is an argument error.(1 argument was called and 0 was expected)
# 4. Where is the error in the code?
#when defining the method, 
# 5. Why did the interpreter give you this error?
#the argument bracket in the methos should have shown one argument to match the number of arguments where it was called (or vice versa).

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('You are an idiot')

# 1. What is the line number where the error occurs?
#The error occurred on line 89
# 2. What is the type of error message?
#It is an error in the code in the cartman_says
# 3. What additional information does the interpreter provide about this type of error?
#The problem is about arguments expected and given when called (0 arguments were called and 1 was expected)
# 4. Where is the error in the code?
#in calling the method
# 5. Why did the interpreter give you this error?
#When the method was called, no value were given for the argument which did not match how it was defined



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!',"Thomas")

# 1. What is the line number where the error occurs?
#The error occurred on line 110
# 2. What is the type of error message?
#It is an error in the code in the cartman_lie
# 3. What additional information does the interpreter provide about this type of error?
#The problem is about arguments expected and given when called (1 argument was called and 2 were expected)
# 4. Where is the error in the code?
#in calling the method
# 5. Why did the interpreter give you this error?
#hen the method was called, only one value was given for the argument which did not match how it was defined

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#The error occurred on line 125
# 2. What is the type of error message?
#It is an error in the code in *
# 3. What additional information does the interpreter provide about this type of error?
#The string cannot be considered as a fix num (a number), It is a type error.
# 4. Where is the error in the code?
#the code should have been reversed with the number after the * sign 
# 5. Why did the interpreter give you this error?
#The 5 is not able to be multiplied by a string

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
#The error occurred on line 140
# 2. What is the type of error message?
#It is an error in the code in / 
# 3. What additional information does the interpreter provide about this type of error?
#the problem is  the division by 0, it is a zero division error
# 4. Where is the error in the code?
#In the value of the variable
# 5. Why did the interpreter give you this error?
#no numbers can be divided by 0

# --- error -------------------------------------------------------



# 1. What is the line number where the error occurs?
#The error occurred on line 156
# 2. What is the type of error message?
#It is an error in the code in the rwquire_relative 
# 3. What additional information does the interpreter provide about this type of error?
#It couldn't lod the file called, and it showed where it tried to load it from
# 4. Where is the error in the code?
#in calling to get a file
# 5. Why did the interpreter give you this error?
#The cartmans_essay.md file was not in the same directory than the errors.rb file


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
# The one on line 51, mainly because it was the first one different from the example given in the instructions
#How did you figure out what the issue with the error was?
# By paying attention to the error message, all of it.
#Were you able to determine why each error message happened based on the code? 
#yes, once you pay attention, it makes sense
#When you encounter errors in your future code, what process will you follow to help you debug?
# read it and read it all, not section by section. Don't rush in reading it.