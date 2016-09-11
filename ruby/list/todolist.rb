
class TodoList
	def initialize(arr)
		@chor_1= "do the dishes"
		@chor_2= "mow the lawn"
		@arr= [@chor_1, @chor_2]
	end	

	def get_items
			@arr
	end

	def delete_item(item)
		@arr.delete(item)
	end

	def add_item(item)
        @arr<< item
	end

	def get_item(num)
		@arr[num]
	end

end



list=TodoList.new(["do the dishes", "mow the lawn"])

p list.get_items