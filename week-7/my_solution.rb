# Virus Predictor

# I worked on this challenge with: The GPS guide Sara Taurchini.
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
# specifies the relative path name to the file that's being
#required (in the same directory), 'require' is for the absoulte
#path
require_relative 'state_data'


class VirusPredictor

  # used for creating objects and setting attributes for initialization
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted_deaths with @population_density, @population, and @state and calls speed_of_spread with @population_density and @state
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

  # takes population density, population, and state and based on the population density and the size of the population it calculates the number of deaths and rounds down to the nearest number and prints out a message
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = 0
    density_hash = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1,0 => 0.05}
    density_hash.each_key { |key|
      if @population_density >= key
        number_of_deaths = (@population * density_hash[key]).floor
      end
    }

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # takes @population_density and @state and it calculates based on the population density-- it determines the speed of the spread and it prints out a message about how fast the virus will spread
  def speed_of_spread #in months
    speed = 0.0

    spread = {200 => 0.05, 150 => 1, 100 => 1.5, 50=>2, 0 => 2.5}

    spread.each_key { |key|
      if (@population_density >= key)
        speed += spread[key]
      end
    }

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 def print_all_states
  STATE_DATA.each_key { |key|
    new_state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
    new_state.virus_effects
  }
 end

print_all_states

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

The Syntax of the outer hash uses string as keys and uses the hash rocket to point to its value. The inner hashes use symbols as keys, and use the symbal notation with colons.

What does require_relative do? How is it different from require?

  both require an require relative allow you to access and use code from an outside file. Require relative allows you to specify the path to file relatively from the current directory where the file is begin executed. Require is used when you want to specify the absolute path to the file.

What are some ways to iterate through a hash?

  You can iterate through a hash using .each, .each_key, .map. They will all give access to each pair and allow you tom manipulate the elements.

When refactoring virus_effects, what stood out to you about the variables, if anything?

All the variables were instacne variables. It was easily refactored just by deleting all of the paramaters, and change the method signatrues for the effected methods.

What concept did you most solidify in this challenge?

I think I really solidified my understanding of refactoring and using hashes. I refactored the code to be more dry, and I learned about what things to look for when refactoring, such as what data stuctures are being used, and the scope of variables.

=end