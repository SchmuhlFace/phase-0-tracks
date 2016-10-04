
// Release *0*

//PSEUDOCODE (w/o code jargon as much as possible!)

// create a label to reference a collection of three phrases.
// make a way to examine three different phrases in a collection (function)
// make sure to set up a counter to 0 to compare the length of the phrase to something.
// function should go over/scan each phase and count how long it is.
// function should also determine which phrase is the longest.
// return only the longest phrase of the three phrases.

//RELEASE 0

var phrases = ["long phrase","longest phrase","longer phrase"]
var animals = ["cheetah","lion" ,"minx", "mister tumnis"]
var authors = ["banana yoshimoto","haruki murakami", "Anne Carson"]

function determineLongest(array) {
  var letterCounter = 0;
  var wordLongest = '';

  for(var i=0; i < array.length; i++){
    if(array[i].length > letterCounter){
      var letterCounter = array[i].length;
      var wordLongest = array[i];
    }
  }
  return wordLongest;
}

// RELEASE 1

// write a function that takes two objects and checks to see if the objects share at least one key-value pair


// enter two sets of info with two parts each to be compared
// compare their keys and if they are equal, return true
// if they are not equal, return false
// remember to test and then move test code to the bottom and label

var thing1 = {name: "Steven", age: 54};
var thing2 = {name: "Tamir", age: 54};

function compare(thing1, thing2) {
  for (var key in thing1) {
    if (thing2[key] == thing1[key]) {
      return true;
    }
  }
  return false;
};


// RELEASE 2


//The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. 

// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

// I need an empty array to shovel things into
var returned_string_array = [];
//strings can be max 10 letters long
for (var i = 0; i < 10; i ++) {
  var rando_long = (Math.random()*10);
  var new_word = "";
}


//DRIVERCODE TESTING BELOW!!!

// for ***Release 0***

// console.log(determineLongest(phrases))
// console.log(determineLongest(animals))
// console.log(determineLongest(authors))

// longest phrase
// mister tumnis
// banana yoshimoto



// for ***Release 1***

// console.log(compare(thing1,thing2));
// => true


// for ***Release 2***

// I am very stuck on this and lost :( Planning to meet with others tonight and hopefully get some answers!





