


//PSEUDOCODE (w/o code jargon as much as possible!)

// create a label to reference a collection of three phrases.
// make a way to examine three different phrases in a collection (function)
// make sure to set up a counter of 0 to compare the length of the phrase to something.
// have the function go over each phase and count how long it is.
// determine which phrase is the longest.
// return only the longest phrase of the three phrases.

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

//drivercode testing

// console.log(determineLongest(phrases))
// console.log(determineLongest(animals))
// console.log(determineLongest(authors))

// longest phrase
// mister tumnis
// banana yoshimoto
// => undefined
