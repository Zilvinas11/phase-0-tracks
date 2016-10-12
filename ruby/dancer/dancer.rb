class Dancer
	attr_accessor :age
	def initialize(name,age)
		@name="Misty Copeland"
		@age=33
		@arr=[]
		@i=0
	end

	def name
		@name
	end
	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(name)
		@arr << name
	end

	def card
		@arr
	end

	def begin_next_dance
		n= "Now dancing with #{@arr[@i]}."
		@arr.delete_at(@i)
		@i=@i+1
		return n
	end
	
	def tutu_color(color)
		color= "She is wairing #{color}."
	end


end

#l= Dancer.new("bew",33)

#p l.name