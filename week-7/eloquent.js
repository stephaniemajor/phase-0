// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var hair = "blond";
console.log(hair);
var hair = "white";
console.log(hair);

//Littel program: favorite food:
prompt("What\'s your favorite food?","...");
console.log("Hey! That\'s my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//looping exercise solution
for (var triangle = "#"; triangle.length <= 7; triangle += "#")
  console.log(triangle);


//FizzBuzz exercise solution
var output = "";
for (var number = 1; number <= 100; number +1) {
 if (number % 3 && 5 == 0)
   output += "FizzBuzz";
 else if (number % 3 == 0)
   output += "Fizz";
 else if (number % 5 == 0)
   output += "Buzz";
console.log(output || number)
}

//chess board exercise
var board = "";

for (var y = 0; y < 8; y++) {
  for (var x = 0; x < 8; x++) {
    if ((x + y) % 2 == 0)
      board += " ";
    else
      board += "#";
  }
  board += "\n";
}

console.log(board);

// Functions
// Complete the `minimum` exercise.

function min(a,b) {
  if  (a < b)
    return a;
  else 
    return b;
}
  
// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  "name" :"Stephanie major", 
  "age": 22,
  "food": ["duck confit","cassoulet","poutine"],
  "quirk": "I don't have a Facebook account"
};