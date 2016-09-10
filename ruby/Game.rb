#enter a word 
#	break down the workd into Array
#create a seperate array and print out the "_" based on number of letters
#determine how many tries the person has
#	if word is longer then 3 length-1 
#ask for the letters
#comaper the letter with the orignal array and find the index values and replace _ with the letter
#do it untill the array is up

class Game
	attr_reader :arr,:turns
	attr_accessor :underscore_arr
	
	def initialize
		@arr= []
		@underscore_arr =[]
	end
	
	def init_arr(word)
       @arr= word.chars
		@arr.length.times do 
			|i| @underscore_arr[i]="_" end
    end
   def turns
    	@turns=@arr.length+3
   end
    
    def check_arr(letter)
    	@arr.length.times do|i|
    		if @arr[i]==letter
    		@underscore_arr[i]=letter
    		else
    		end	
    	end
    end
end

a= Game.new 

puts "Type in any word"
word= gets.chomp

a.init_arr("#{word}")
puts "Pass it on to the other player. Player 2 good luck, you will need it!"
puts "Rules: guess the letter by typing it a single letter. If you feel lucky type in '1' to guess the word."
puts ""
score=false
index=0
until (index >= a.turns) || (a.arr==a.underscore_arr)
    puts "Player 2 has #{a.turns-index} turn(s) left. No pressure! :D"
    puts "#{a.underscore_arr}"
    
    letter=gets.chomp
    if letter == "1" 
    	letter=gets.chomp
    	if ( a.arr==letter.chars)
    	index=a.turns
    	score=true
    else
    	puts"NOPE"
    end
    else
    end

	a.check_arr("#{letter}")
	index=1+index
end

if score==true || a.arr==a.underscore_arr
	puts "Congrats you won!!!!"
else
	puts "you suck!"
end
