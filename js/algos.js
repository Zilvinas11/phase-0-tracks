

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

console.log(test(arr_1));



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

	// builds an array out of strings lenght 

	    var text='';
    var possible = "abcdefghijklmnopqrstuvwxyz";

   
   var arr_result=[];


 function random(string){
  for (var n = 0; n < string; n++){
  	
  	text='';
  for (var i = 0; i < Math.floor((Math.random() * 10) + 1); i++){ 
  	
        text += possible.charAt(Math.floor(Math.random() * possible.length));

  }

  
   
		arr_result.push(text);
}
console.log(arr_result);

}

random("3")