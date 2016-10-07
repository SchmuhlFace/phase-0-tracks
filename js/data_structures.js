//7.2 Pairing SchmuhlFace & AlexCan(didn't respond to final time and I had to do this on my own)


// // array of colors
var colors = ["purple", "blue", "green", "rainbow"];

//array of four name

var names = ["Snowball", "Unicorn", "Kitten", "Max"];

// add another color
colors.push("pink");

// add another name
names.push("Ed");

//pseudocoding

// Built in method of Java? (.key . value)
// Sounds like an iteration // loop
// 

if (colors.length == names.length) {
  var horse = {};
  for (i = 0; i < colors.length; i ++) {
      horse[names[i]] = colors[i]
  }

}
      console.log(horse);

////////CONSTRUCTOR:

function Car(type, color) {
  console.log("Our sweet ride:", this);

  this.type = type;
  this.color = color;

  this.vroom = function() { console.log("VROOOOOOM"); };
  console.log("CAR INITIALIZATION COMPLETE");

}

var carOne = new Car("Honda", "platinum");
console.log(carOne);
carOne.vroom();

var carTwo = new Car("BMW", "rainbow");
console.log(carTwo);
carTwo.vroom();



// Research on your own

// If you wanted to loop through the keys and values of an object, how would you do that? (There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)

// This is how you loop through keys / values in JavaS:

// for (var i = 0; i < kittens.length; i++) {
//   console.log(kittens[i]);
// }

// Are there advantages to using constructor functions to create objects? Disadvantages? 

// Constructors have Global values, which is useful and dangerous b/c it means you can access it easily but a person can also change it easily, so it's a sort of paradox! 

