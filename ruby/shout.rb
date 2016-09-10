# 6.4 writing a simple module
# module Shout
#  def self.yell_angrily(words)
 #   words + "!!!" + " :("
  #end
  #def self.yelling_happily(word)
  # word + "!!!" + " :D"
 # end

#end

# mix in a module

module Shout
 def yell_angrily(words)
   words + "!!!" + " :("
  end
  def yelling_happily(word)
  word + "!!!" + " :D"
  end
end

class Gril
	include Shout
end

a=Gril.new

p a.yelling_happily("hey")
p a.yell_angrily("dndn")


class Boy
	include Shout
end

b=Boy.new

p b.yell_angrily("hey")
p b.yelling_happily("dkdkd")