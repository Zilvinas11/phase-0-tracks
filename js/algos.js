

// release 0
var arr= ["long phrase","longest phrase","longer phrase"];

var arr_1= ["dd", "ww","qq"]
 

function test(array){
	console.log(array[1]);
}




test(arr);

test(arr_1);


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

