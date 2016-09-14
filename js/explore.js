// pseudocode a function that takes a string as a parameter 
// and reverses the string. reverse("hello"), for example, should 
// return "olleh".  use phrases 
// like "for each" instead of JavaScript-specific terms. 
// Remember that you can add strings in JavaScript, so '' + 'a' 
// would result in the string 'a'. Take your time. This is the 
// most valuable skill in programming: being able to think through 
// a problem logically.


//PSEUDOCODE

// A function is like a Ruby method... so:
// Take in a string
// Split that string into individual letters in an array
// Reverse all the letters
// Join them all back together into a string


function reverseWord(str) {
    return str.split("").reverse().join("");
}
reverseWord("hello");

//Test
// => 'olleh'

// Another version without built in functions!
// i-- is like i++ but the opposite; it subtracts! found it online ;)

var newWord
//I'm not sure if the variable above is working...

function reverseWord(str) {
    var newWord = "";
    for (var i = str.length - 1; i >= 0; i--) {
        newWord += str[i];
    }
    return newWord;
}
reverseWord('hello');
//Test
// => 'olleh'

// Two more things to do: 

// 1. Add driver code that calls the function in order to reverse a 
//string of your choice, and stores the result of the function 
// in a variable.

// Driver code
var newWord

function reverseWord(str) {
    var newWord = "";
    for (var i = str.length - 1; i >= 0; i--) {
        newWord += str[i];
    }
    return newWord;
}
// reverseWord('hello');
newWord = reverseWord('hello');

// 2. Add driver code that prints the variable if some condition is 
//true. The condition can be a silly one, like 1 == 1.

if (1 == 1) {
    console.log(newWord);
}



