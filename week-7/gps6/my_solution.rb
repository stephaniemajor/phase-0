# Virus Predictor

# I worked on this challenge with:
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative would link the file with the code to the other
# file. It allows separation of data and the program. 
# The path is relative to the program's directory. 
# Require links to external ruby modules to obtain additional
# functionality.
#require_relative 'state_data'

class VirusPredictor

  # Constructor method.
  # Sets the initial class property values for a particular instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    
  end
    

  
  # It calls the program's functions using the instance values.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  # Any methods below are considered helper methods that
  # ONLY the class can access and no one from the outside world.
  private
  
  
  # Conditional method where it'll apply a death rate 
  # according to population density and returns a death count
  def predicted_deaths
    
    
    # predicted deaths is solely based on population density
    
    # no variable stated since @population_density is already being evaluted
    case 
      when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
      else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Conditional where a speed rate is created according to
  # population density and returns period in terms of month.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density 
      when @population_density >= 200 then speed += 0.5
      when @population_density >= 150 then speed += 1
      when @population_density >= 100 then speed += 1.5
      when @population_density >= 50 then speed += 2
      else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


  
 # Create a call iterating by state and print out the virus effect per state
STATE_DATA.each do |state, data|
  
 VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
  

end


#=======================================================================
# Reflection Section
# What happens if you move it above virus_effects? When would you want to use this method? We could let the outside person call it personally
# •	What are the differences between the two different hash syntaxes shown in the state_data file?
# One has a string as a key and an arrow to point to the value and the other one has the structure with the variable as a key and the colon pointing to the value
# •	What does require_relative do? How is it different from require?
# require_relative would link the file with the code to the other file. It allows separation of data and the program. 
# For the relative, it is kind of a path to another file to obtain additional functionality and it doesn’t need to be a Ruby file. 
# •	What are some ways to iterate through a hash? 
# We can use the if statement if there isn’t a lot of elsif, but when there are lots, it is better to use a case.
# •	When refactoring virus_effects, what stood out to you about the variables, if anything?
# We were reiterating the arguments while they were already initialized in the class.
# •	What concept did you most solidify in this challenge?
# The case:  we don’t need to mention which variable is evaluated if it is an equal situation but if it is a conditional (< or >) situation, then the variable needs to be stated. 
# I learned about the private method (it was the first time I heard about it) where when we use this method, any code below is not accessible by anybody outside the class
# I learned that we should not put methods or conditions within the initialization. 
# I learned about relative require and require. I hadn’t noticed them in the rbspec files.
