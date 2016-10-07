# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
   
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
 

  end

#It protects from user modifing methods and it is only beeing called insde the class.
  private

  def predicted_deaths
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

   
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


STATE_DATA.each do | state, states_data | 
  new_states= VirusPredictor.new(state,states_data[:population_density], states_data[:population])
  new_states.virus_effects
end






#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
#the key value is defined diffrently. One is defiend as a string and the other two are located inside the value as a hash

#What does require_relative do? How is it different from require?
#require relatevie is a short cut to acess files if the files are in the same directory. require requires a path to be specified.

#What are some ways to iterate through a hash?
#As the way we did above we iterate STATE_DATA suing .each block method and accesed values thorugh key and value.

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#Well the method inside the privete did not use the input values. They were useding attribute.


#What concept did you most solidify in this challenge?
#I think this assigment was fun because I was able to dive in deaper. 
