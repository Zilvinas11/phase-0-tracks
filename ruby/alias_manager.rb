aliases= {}
name=nil

loop do 
puts "What is your name? type quit to end"

name= gets.chomp

break if name == "quit"
a=name.split(' ')


 a[0],a[1] = a[1]<<" ",a[0]

 new_a = a.join('')

n= new_a.chars

letter= ["a","e","i","o","u"]

new_string =n.map! do |n| 
	if  (n=='a')|| (n=='e') || (n== 'i')|| (n== 'o')|| (n== 'u')
		 n = letter[letter.index(n)+1]
	elsif n == " "
	n = " "
	else
		 
	 n.next  
end
end.join('')

p new_string 

aliases.merge!("#{new_string}" => "#{name}")

end

aliases.each {|key,value| puts "#{key}  is actually  #{value}"}

