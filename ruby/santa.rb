

class Santa
	def initialize (gender,ethnicity)
		@gender=gender
		@ethnicity=ethnicity
		@reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age=0
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays! #{@age}"
	end
	def eat_milk_and_cookies(type) 
		puts "That was a good #{type}!"
	end
    def about
    	puts "#{@gender} #{@ethnicity}  #{@reindeer_ranking} " 
    end

    def celebrate_birthday
    	@age = @age+1
    end

    def get_mad_at(name)
    	a=@reindeer_ranking
    	a.delete(name)
    	a.push(name)
	end
	def gender=(gender)
		@gender=gender
	end
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end


end
a = Santa.new("ne","me")

a.eat_milk_and_cookies("dark")
a.speak
a.about

puts "now the array"

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas[2].about
#santas.eat_milk_and_cookies

a.celebrate_birthday

p a.get_mad_at("Vixen")
p a.gender="she male"


puts "age: #{a.age}  Ethnicity #{a.ethnicity}"

