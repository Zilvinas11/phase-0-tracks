
aliases= {}
name=nil

loop do 
puts "What is your name? type quit to end"


name= gets.chomp

break if name == "quit"
a=name.split(' ')

#letters.class
 a[0],a[1] = a[1]<<" ",a[0]

p a
p new_a = a.join('')

p n= new_a.chars
p n

letter= ["a","e","i","o","u"]
#n.class
n.map! do |n| 
	n.next  
end

p n

aliases.merge!(name: n)
end

