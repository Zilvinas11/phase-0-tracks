# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

h={}
num=0
def list(items)

	h={"carrots"=> 1, "apples"=> 2, "cereal"=>2, "pizza"=>2}

#h.fetch("#{item}", "#{defoult_quantity}")
	return h
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

def add_item(hash)
	puts "Type in item"
	item= gets.chomp


	puts "Type in quantity"
	num= gets.chomp

	hash=hash.merge({:"#{item}" => num})

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
	puts "Whichs itmes quantity would you like to update?"
	item=gets.chomp
	puts "The new quantity?"
	num=gets.chomp
	hash["#{item}"]=num
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


def list2#(item)

	item= gets.chomp
	defoult_quantity=1

	h.fetch("#{item}", "#{defoult_quantity}").split(' ')

	print
end


hash= list(h)







p hash
#hash= add_item(hash)
#puts "Input all the items separated by space and click enter. Note that Quantity of each item is inisilized as one"
#itmes="carrots apples cereal pizza"

 ##hash= remove(hash)


#print(hash)


#print(add_item)


hash=update(hash)
p hash