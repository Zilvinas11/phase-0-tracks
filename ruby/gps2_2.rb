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
# input: item name and optional quantity
# steps:
# output:

def add_item(hash,item,num)
	
	h2 = { "#{item}" => num}
	hash.merge!(h2) 
	return hash
end


# Method to remove an item from the list
# input:
# steps:
# output:
def remove(hash)
	puts "What item would you like to remove?"
	item=gets.chomp
	hash.delete("#{item}") 
	return hash
end


# Method to update the quantity of an item
# input:
# steps:
# output:
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
# input:
# steps:
# output:
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

print(hash)
