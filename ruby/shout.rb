# 6.4 writing a simple module
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(word)
   word + "!!!" + " :D"
  end

end
# mix in a module
