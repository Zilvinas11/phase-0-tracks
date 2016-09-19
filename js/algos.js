

// release 0
var arr= ["long phrase","longest phrase","longer phrase"];

var arr_1= ["dd", "ww","qq"]
 


var value='';
console.log(arr.length);

function test(array){
var temp=0;
 var bigest=0;	
for (var i = 0; i < array.length; i++){	
	temp= array[i].length;
	if (temp> bigest){
	bigest=temp;
	temp=0;
	value=array[i];
	}else temp=0;
}

return value;

}


test(arr);
console.log(test(arr));

//console.log(test(arr_1));



// release 1

var val={name: "Steven", age: 54};
var val_2={name: "Tamir", age: 54};

var return_val=false;
var	n=false ;

function long_word(word_1,word_2){
	var arr=Object.keys(word_1);
	var arr_2= Object.keys(word_2);


 
 	for (var i = 0; i < 2; i++){
		if (arr[i] === arr_2[i]){
				if  (word_1[arr[i]] === word_2[arr_2[i]]){
					return_val=	true;	}
		}
	}
 
 return return_val;
 
}

console.log(long_word(val,val_2));

// release 3

	// 3.1builds an array out of strings lenght 

	    var text='';
    var possible = "abcdefghijklmnopqrstuvwxyz";

   
   


 function random(string){
 	 var arr_result=[];
  for (var n = 0; n < string; n++){
 	
  	text='';
  for (var i = 0; i < Math.floor((Math.random() * 10) + 1); i++){ 
  	
        text += possible.charAt(Math.floor(Math.random() * possible.length));

  }

  
   
		arr_result.push(text);
}

return arr_result;
}


console.log(random("3"));
console.log(random("5"));
	//3.2 generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.
 /// I ran out of time to build loop so I just stuck with what works !!!



tor_1 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_1);
console.log(test(tor_1))

tor_2 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_2);
console.log(test(tor_2))

tor_3 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_3);
console.log(test(tor_3))

tor_4 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_4);
console.log(test(tor_4))


tor_5 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_5);
console.log(test(tor_5))

tor_10 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_10);
console.log(test(tor_10))

tor_6 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_6);
console.log(test(tor_6))

tor_7 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_7);
console.log(test(tor_7))

tor_8 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_8);
console.log(test(tor_8))

tor_9 = random(Math.floor((Math.random() * 5) + 1));
console.log(tor_9);
console.log(test(tor_9))


tor_10 = random(Math.floor((Math.random() * 2) + 1));
console.log(tor_10);
console.log(test(tor_10))

	// store_arr.push(random(Math.floor((Math.random() * 2) + 1)));

//console.log(store_arr);
	//console.log(test(store_arr[i]));
	

