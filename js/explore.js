/* create a new varable and input each value from a string into to it in revers order.*/



var new_str='';

function revert(x){
	
	var end=x.length;
	
	for (var i = 0; i < x.length; i++) {
	
        new_str= new_str + x[end-1];
        end--;
	}
	return new_str
}


revert( "Loop over me!");

console.log( new_str);



if (  1 == 1 ) {
	console.log("printing somthing when condition is true");
}
