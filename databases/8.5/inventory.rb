# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("inventory.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS inventory(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    quantity INT
    )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion



def create_inventory(db, name, quantity)
  db.execute("INSERT INTO  inventory (name, quantity) VALUES (?, ?)", [name, quantity] )
end
inventory = db.execute("SELECT * FROM  inventory")

if inventory.empty? 
10.times do
	  create_inventory( db, Faker::Commerce.product_name, 0  )# Random.new(12) 
end
end
 #
 #inventory.each do | item|
 #puts "#{item['name']} is #{item['age']}"
 #end
def update_inventory(db, name, quantity)
	db.execute("UPDATE inventory SET quantity= ? WHERE name= ? ", [quantity, name])
end

puts "Do you like to (A) input the new item OR (B) update an infromation about the item. Please type in A or B respectivly."
choice = gets.chomp
puts " Please input the name"
	name_of_item = gets.chomp
	puts " Please input the quantity"
	items_quanity = gets.chomp


if choice == "A"
	create_inventory(db, name_of_item, items_quanity)
elsif choice == "B"
	update_inventory(db, name_of_item, items_quanity)
end


	
