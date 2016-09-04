##Prompt the designer/user for all of the information 
#Prompt the designer/user for all of this information.

index=0
	
form={name: nil, age: nil, number_of_children: nil, faverate_decor_theme: nil, budget: nil, room_count: nil, garage_is_attached_to_the_huse: nil  }	 # hash is with keys but the values will be given by the user in the loop

p form.length

# loop asks value infromation based on keys
loop do
	break if index ==form.length

	puts "Your: #{form.keys[index]} ?"

		keys=form.keys
	 form[keys[index]]=gets.chomp

	index=index+1

end

# pritns out the reformated hash
form.each do |key, value|
    puts  " form Question: Your #{key}? > Answer: #{value}"    
end

# asks user if they want to change any of the value from correspodning key
puts "To change the answer select the question(ex: name, room_count ) and type in the corrected value. Type in 'none' to skip it"

update= gets.chomp
if update== "none"
	
else
	puts "Type in the new value"
	new_v=gets.chomp
form[update]=new_v
end 

p form