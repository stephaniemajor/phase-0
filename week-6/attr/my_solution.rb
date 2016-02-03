#Attr Methods

# I worked on this challenge by myself

# I spent 2.5 hours on this challenge.

# Pseudocode

# Input:a name
# Output: a greeting specific for a name
# Steps:
#1)create an accessor attribute for a name
#2)Create two classes, one for names and one for greetings
#3) link the two classes to get the name - composition

class NameData
  attr_accessor :name
  def initialize
    @name = "Stephanie"
  end
end

class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello_message
    puts "Hello #{@namedata.name}! How wonderful to see you today!"
  end  
end
greeting_message = Greetings.new
greeting_message.hello_message


# Reflection
# Release 1:
# •	What are these methods doing?
# Make us access what is in the class and allows the instance variables to be changed. The variables are @age, @name, @occupation
# •	How are they modifying or returning the value of instance variables?
# They each have a method to change them. For example: 
# def change_my_name=(new_name)
#     @name = new_name
#   end

# Release 2: 
# •	What changed between the last release and this release?
# o	On line 5, an att_reader was added for the age. 
# o	The method  23 – 27, the method that permitted us to see the age, is gone. 
# o	The method on line 58 is simpler
# •	What was replaced?
# An attribute reader method.
# •	Is this code simpler than the last?
# Much simpler indeed.

# Release 3:
# •	What changed between the last release and this release?
# o	An attribute writer for the age instance variable was added on line 6. 
# o	The method  23 – 27, the method that permitted us to change the age, is gone. 
# o	The method on line 68 is simpler

# •	What was replaced?
# An attribute writer method.

# •	Is this code simpler than the last?
# Much simpler


# Release 6: Reflect
# •	What is a reader method?
# Permits you to see (aka returns) a value outside the class without changing it
# •	What is a writer method?
# Permits you to change a variable outside the class but you cannot read it

# •	What do the attr methods do for you?
# Permits you to see (aka returns) and change a variable outside the class (combo or reader-writer)

# •	Should you always use an accessor to cover your bases? Why or why not?
# No because you don’t want someone to mess with your variable. It might touch something that needs the current value your variable has

# •	What is confusing to you about these methods?
# These methods are logical. The most difficult in all that is how to call the value from outside. It is much more like regular plain English but we have been drilled over the last few weeks to call it “the computer way”…
