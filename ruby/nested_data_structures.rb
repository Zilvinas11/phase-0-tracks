# Nested DATA structures 5.4
# blow made a nested data and ruby

desk = {
    table_top: { folder:  {documets: [ "home work", "to do list"]}, pensils: { number_of_blue: 6, number_of_black: 4 },
				},
    drawer: { files:{:"documets"=> [
            "tax", 
            "submition files"]}, snacks: ["cheetos","pepsi"]
        		
		 }
}


p desk[:table_top][:folder][:documets][0]

p  desk[:table_top][:folder][:documets][0], desk[:table_top][:folder][:documets][1]= desk[:table_top][:folder][:documets][1], desk[:table_top][:folder][:documets][0]

p desk[:drawer][:files][:documets].push("new file")
