 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
// Goals:Avoid the snake, get big
// Characters: frog, snake
// Objects: frog(position success), snake(position), flies(position)
// Functions: hunting, game status

// Pseudocode
//Declare a 'frog' object that will have properties as position and success
//Add different methods to 'frog' to make it move up, down, forward and backward
//Declare a 'snake' object and give it a random position
//Declare a 'flies' object and give it a random position
//Move the frog, and assign a second random position to the snake
//Check where the frog is with respect to the dragon and flies
//If its the same position as flies, success! If the player position is same as snake, game over!

// Initial Code

// Create the snake object with its position
// var snake = {
//   "positionEat": Math.floor((Math.random()*50)+1),
//   "positionPond": Math.floor((Math.random()*75)+1)
// };

// // Create the flies object with its position
// var flies = {
//   "positionEat": Math.floor((Math.random()*50)+1),
//   "positionPond": Math.floor((Math.random()*75)+1)
// };

// // Create the frog object with its position
// var frog = {
//   "positionEat": 0,
//   "positionPond": 0,
//   "success": "false",
  
//   // Create a function to move the frog
//   hunting : function(direction){
//     if (direction === "right") {
//       this.positionEat += 10;
//     }
//     else if (direction === "left") {
//       this.positionEat -= 5;
//     }
//     else if (direction === "down") {
//       this.positionPond += 15;
//     }
//     else if (direction === "up") {
//       this.positionPond -= 12;
//     }
//   }
// };
// frog.hunting("up");


// // Display where the frog is
// console.log("The frog is located at " + frog.positionEat + " and " + frog.positionPond);

// // Display where snake is: 
// console.log("The snake is located at " + snake.positionEat + " and " + snake.positionPond);

// // game status

// if (frog.positionEat === snake.positionEat) {
//   console.log("The dragon ate the frog!");
// }  
// else if 
//   (frog.positionPond === flies.positionPond) {
//   frog.success = "true";
//   console.log("The frog ate and may get back to the pond");      
// }
// else if 
//   (frog.positionEat === flies.positionEat) {
//   frog.success = "true";
//   console.log("The frog ate and may get back to the pond");      
// }
// else if 
//   (frog.positionPond === flies.positionPond) {
//   frog.success = "true";
//   console.log("The frog ate and may get back to the pond");      
// }





// Refactored Code

// Create the snake object with its position
var snake = {
  "positionEat": Math.floor((Math.random()*50)+1),
  "positionPond": Math.floor((Math.random()*75)+1)
};

// Create the flies object with its position
var flies = {
  "positionEat": Math.floor((Math.random()*50)+1),
  "positionPond": Math.floor((Math.random()*75)+1)
};

// Create the frog object with its position
var frog = {
  "positionEat": 0,
  "positionPond": 0,
  "success": "false",
  
  // Create a function to move the frog
  hunting : function(direction){
    if (direction === "right") {
      this.positionEat += 10;
    }
    else if (direction === "left") {
      this.positionEat -= 5;
    }
    else if (direction === "down") {
      this.positionPond += 15;
    }
    else if (direction === "up") {
      this.positionPond -= 12;
    }
  }
};
frog.hunting("up");


// Display where the frog is
console.log("The frog is located at " + frog.positionEat + " and " + frog.positionPond);

// Display where snake is: 
console.log("The snake is located at " + snake.positionEat + " and " + snake.positionPond);

// game status

if (frog.positionEat === snake.positionEat || frog.positionPond ===    snake.positionPond) {
  console.log("The dragon ate the frog!");
}  
else if 
  (frog.positionEat === flies.positionEat || frog.positionPond === flies.positionPond) {
  frog.success = "true";
  console.log("The frog ate and may get back to the pond");      
}

// Reflection
// first I should mentioned that I did not read the instructions at first, I started to play around and created a nother type of game without move up or down. etc. I spent 3 hours on it. 
// the most difficult aspect of the exercise was to know what I wanted to do do, ask for a list or create an object with a list.
// I was far from done regarding create the code but my aim and pseudoce were done. I believe it would have been an OK game...
// I spent 3 hours for this wrong game...
// Reflection solo 7.7 2-13-16
// •	What was the most difficult part of this challenge?
// To figure out how much we should do this on our own or to get inspired by the example given.then I saw that the game was pretty much the same as the example, I decided to go for the full inspirational while trying to think how to do it myself.
// •	What did you learn about creating objects and functions that interact with one another? My solution wasn’t working because I had created the variable frog independently. 
// I saw in the example provided that the variable had the function within it. This is odd to me. I would like to hear more about it.
// •	Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I had found the random method on my very first research.
// •	How can you access and manipulate properties of objects?
// By calling the variable and the method related to it
// •	Are there topics you are still struggling with?
// Yes, the literal vs the constructor version

