class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize (gender,ethnicity)
		@gender=gender
		@ethnicity=ethnicity
		@reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age=rand(0...140)
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays! #{@age}"
	end
	def eat_milk_and_cookies(type) 
		puts "That was a good #{type}!"
	end
    
    def celebrate_birthday
    	@age = @age+1
    end

    def get_mad_at(name)
    	a=@reindeer_ranking
    	a.delete(name)
    	a.push(name)
	end

	def about
    	puts " Santas gender:#{@gender}, ethnicity #{@ethnicity}, reindeer_ranking:#{@reindeer_ranking}, age: #{@age} " 
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



a.celebrate_birthday

p a.get_mad_at("Vixen")
p a.gender="she male"


puts "age: #{a.age}  Ethnicity #{a.ethnicity}"

#reliese 4
i=0
until i==50

  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  i=i+1
end

santas.length.times do |i|

santas[i].about
end