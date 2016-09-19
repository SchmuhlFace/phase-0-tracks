
// Release *0*

//PSEUDOCODE (w/o code jargon as much as possible!)

// create a label to reference a collection of three phrases.
// make a way to examine three different phrases in a collection (function)
// make sure to set up a counter of 0 to compare the length of the phrase to something.
// have the function go over each phase and count how long it is.
// determine which phrase is the longest.
// return only the longest phrase of the three phrases.

//RELEASE 0

var phrases = ["long phrase","longest phrase","longer phrase"]
var animals = ["cheetah","lion" ,"minx", "mister tumnis"]
var authors = ["banana yoshimoto","haruki murakami", "kawabate"]

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

// set up a variable for the whole thing so it can be called and tested
// enter two objects
// compare their keys and if they are equal, return true
// if they are not equal, return false
// remember to test and then move test code to the bottom and label

var thing1 = {name: "Steven", age: 54};
var thing2 = {name: "Tamir", age: 54};
var result = compare(thing1,thing2);

var compare = function(thing1, thing2) {
  for (var key in thing1) {
    if (thing2[key] == thing1[key]) {
      return true;
    }
  }
  return false;
};

//set up variables as hashes b/c they store two pieces of info





//DRIVERCODE TESTING

// for ***Release 0***

// console.log(determineLongest(phrases))
// console.log(determineLongest(animals))
// console.log(determineLongest(authors))

// longest phrase
// mister tumnis
// banana yoshimoto

// for ***Release 1***

// console.log(result);

// => true


// for ***Release 2***







