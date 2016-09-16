# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Uses a directory where the program is located to load the file
# Require_relative vs Require _ use a current directory that the user is running the program from.

require_relative 'state_data'



class VirusPredictor

# runs at the begging to initialize values, each time class instance is created values will be initilize.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# runs predicted_deaths and speed_of_spread class methos
  def virus_effects
    deaths=predicted_deaths(@population_density, @population)
    speed=speed_of_spread(@population_density)
    print "#{@state} will lose #{deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n "


  end
 private
 

# predicts deaths at each state using population_density and population values. Also prints out the results for each state.
  def predicted_deaths(population_density, population)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    

  end

# It will predict how fast the virus will spread based on population desity. Also it prints out the values
  def speed_of_spread(population_density) #in months
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

    end


  def self.predictor(data)
    data.each do |state, info| 

    state= VirusPredictor.new(state, info[:population_density], info[:population])
    state.virus_effects

    end
  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state



VirusPredictor.predictor(STATE_DATA)


#=======================================================================
# Reflection Section