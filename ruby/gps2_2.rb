# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash


num=0
def list(items)

	arr=items.split
	h = Hash[ *arr.collect { |v| [ v, 1 ] }.flatten ]
	#h={"carrots"=> 1, "apples"=> 2, "cereal"=>2, "pizza"=>2}

#h.fetch("#{item}", "#{defoult_quantity}")
	return h
end

# Method to add an item to a list
# input: item na me and optional quantity
# steps:  created a new hash and merge it to the old one
# output: hash

def add_item(hash,item,num)
	
	h2 = { "#{item}" => num}
	hash.merge!(h2) 
	return hash
end


# Method to remove an item from the list
# input: hash
# steps: asked user for the item, delted it form the hash
# output: hash
def remove(hash)
	puts "What item would you like to remove?"
	item=gets.chomp
	hash.delete("#{item}") 
	return hash
end


# Method to update the quantity of an item
# input: hash
# steps:asked user for item and number, created a new hash and merge it to the old one
# output: hash
def update(hash)
	puts "Whichs itme's quantity would you like to update?"
	item=gets.chomp
	puts "The new quantity?"
	num=gets.chomp
	h2 = { "#{item}" => num}
	hash.merge!(h2) 
	return hash
	
end 	


# Method to print a list and make it look pretty
# input: hash
# steps: go throug each hash value and print it
# output: none
def print(hash)
	hash.each do |key, value|
    puts "Item: #{key} Quantity: #{value}"
end
end


# creating list
hash= list("carrots apples cereal pizza")

print(hash)


#adding stuff to the list
puts "How many new itmes would you like to add"
num_items= (gets.chomp).to_i
index=0
while num_items != index

	puts "Type in an item"
	item= gets.chomp

	puts "Type in the quantity"
	num= gets.chomp
	 hash=add_item(hash,item,num)

index  = index +1
end

print(hash)


puts "How many itmes would you like to update"
num_items= (gets.chomp).to_i
index=0
while num_items != index
	hash=update(hash)

index  = index +1
end

print(hash)

puts "How many itmes would you like to remove"
num_items= (gets.chomp).to_i
index=0
while num_items != index

	hash=remove(hash)

index  = index +1
end

puts "Very nice looking!!"
print(hash)


#What did you learn about pseudocode from working on this challenge? 
# 	it can be very helful if it is used correclty.
#What are the tradeoffs of using arrays and hashes for this challenge?
#   arrays could less complicated compared to hashes but hashes are a lot more convient to work with
#What does a method return?
# 	I do not get the question. It can return what ever your little hart desiers?
#What kind of things can you pass into methods as arguments?
#    global varables, integers, strings ect ? I do not get the question 
#How can you pass information between methods?
# 	I like attributes when using class, but in this chellegne i used driver code and allways rewrote the code because it was esier for me to read
#What concepts were solidified in this challenge, and what concepts are still confusing?
#   It would have been nice to see what other ways thi could have been done.