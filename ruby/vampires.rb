puts "# of employes"
number= gets.chomp.to_i

until number == 0

puts "What is your name"
name= gets.chomp

if ( "Tu Fang" == name)||("Drake Cula" ==name)
	puts "Definitely a vampire"
end

puts " How old are you?"
age = gets.chomp
puts "What year were you born? "
year = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance?(yes or no) "
health = gets.chomp

allergies=""

until (allergies== "done") || ("sunshine"==allergies)
	puts "Please name any allergies that you have one at the time. Type in done when finished"
allergies= gets.chomp
#puts allergies
end

if allergies== "sunshine"
	puts "Definitely a vampire"
elsif (age.to_i ==(2016-year.to_i)) && ((garlic || health)== "yes")
	puts "Probably not a vampire"
elsif (age.to_i !=(2016-year.to_i)) && ((garlic || health) =="yes")
	puts" Probably a vampire"
elsif (age.to_i !=(2016-year.to_i)) && ((garlic && health)=="yes")
	puts " Almost certainly a vampire"
else 
	puts "results inconclusinve"
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 
number= number - 1
end

