# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
class Car
  attr_accessor :model
  attr_accessor :color
  attr_reader :speed
  attr_reader :distance

  #to create a new car and set its model and color
  def initialize(modelArg, colorArg)
    @model = modelArg
    @color = colorArg
    #to see the speed I am traveling, so I can properly accelerate or decelerate.
    @speed = 0
    #to keep track of the total distance I have travelled, so I can get paid for mileage.
    @cum_distance = 0.0
  end

  #to define a distance to drive so I can follow directions appropriately.
  def drive(distance_to_drive)
    @cum_distance = @cum_distance + distance_to_drive
    puts "The #{@color} #{@model} drove #{@cum_distance} miles."
  end

  #to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
  def accelerate(speed_wanted)
    @speed = speed_wanted
    puts "The #{@color} #{@model} accelerated to #{@speed} mph."
  end

  def decelerate(speed_wanted)
    @speed = speed_wanted
    puts "The #{@color} #{@model} decelerated to #{@speed} mph."
  end

  # to turn left or right so I can navigate a city and follow directions.
  def turn(direction_wanted)
    if direction_wanted == "right"
      puts "The #{@color} #{@model} turned right."
    else direction_wanted == "left"
      puts "The #{@color} #{@model} turned left."
    end
  end

  #to stop the car so I can follow traffic signs and signals.
  def stop
    @speed = 0
    puts "The #{@color} #{@model} stopped."
  end

end
my_car = Car.new("Jetta","Silver")
#to see the speed I am traveling, so I can properly accelerate or decelerate.
puts "Starting speed at #{my_car.speed} mph"
#to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
my_car.accelerate(50)
my_car.drive(0.25)
my_car.decelerate(30)
my_car.turn("left")
my_car.stop


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection