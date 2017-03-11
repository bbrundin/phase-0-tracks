
# Virus Predictor

# I worked on this challenge with: Kyle McDonald.
# We spent 2 hours on this challenge.

#
#
require_relative 'state_data'
# require "pry"
=begin
#require_relative allows this file to point at the state_data file as if it was
part of this file. Require relative means that these files are in the same directory.
Require can pull in files from the desktop or further back, and other files types.
=end

class VirusPredictor

#initialize method - passes through the instance variables into every instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#printing method to calculate within predicted_deaths and speed_of_spread

  def virus_effects
    #removed parameters for predicted_deaths and speed_of_spread, as these are class variables and are accessible throughout the method
    predicted_deaths
    speed_of_spread
  end

 #makes methods below private and not accessible when printing outside the class
 private


#conditional if/else statement to calculate number_of_deaths by population and return a print out of the results.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      deaths= 0.4
    elsif @population_density >= 150
      deaths= 0.3
    elsif @population_density >= 100
      deaths= 0.2
    elsif @population_density >= 50
      deaths= 0.1
    else
      deaths= 0.05
    end
  number_of_deaths = (@population * deaths).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#running parameters through conditional and printing speed of spread in a strings
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# STATE_DATA.each do |state, pop_info|
#   # binding.pry
#   p VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
# end






alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
=begin

# Reflection Section

1. The hash syntax is there is one hash STATE_DATA that holds the key
'state' and then each state has two key values based on population.
2.require_relative allows this file to point at the state_data file as if it was
part of this file. Require relative means that these files are in the same directory.
Require can pull in files from the desktop or further back, and other files types.
3.The most simple way to iterate over a hash would be :

hash.each do |key, value|
  puts key
  puts value
end
4. We removed the parameters for predicted_deaths and speed_of_spread,that were passing thorugh virus_effects.
These were unneccesary as these are class variables and are accessible throughout the method.
5. I got a better understanding of refactoring and making code DRY during this challenge.

=end
