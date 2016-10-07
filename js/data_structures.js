//7.2 Pairing SchmuhlFace & AlexCan(didn't respond to final time)


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

object value
var horse = {names: 'Snowball', colors: 'purple'};
console.log(horse);

////////

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




