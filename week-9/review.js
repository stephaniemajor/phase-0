// # A Nested Array to Model a Bingo Board SOLO CHALLENGE

// # I spent [#] hours on this challenge.
var board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]];
        
var bingo = ["B","I","N","G","O"];

// # Release 0: Pseudocode
// create an empty object for my bingo board
var bingoBoard = {};
bingoBoard.board = board;

// Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
bingoBoard.call = function() {
  var letter = bingo[Math.floor(Math.random() * bingo.length)];
  var number = Math.floor(Math.random() * (100-1) + 1);
  return letter + number;
};

// Check the called column for the number called.
bingoBoard.check = function(bingoCall) {
  var column = 0;
  if (bingoCall[0] == "I") column = 1;
  if (bingoCall[0] == "N") column = 2;
  if (bingoCall[0] == "G") column = 3;
  if (bingoCall[0] == "O") column = 4;
  
  var number = parseInt(bingoCall.substring(1));

  // If the number is in the column, replace with an 'x'  
  for (var row = 0; row < this.board.length; row++) {
    if (bingoBoard.board[row][column] == number) {
       bingoBoard.board[row][column] = "X";
    }
  }
};

// Display a column to the console
bingoBoard.board[0];

// # Display the board to the console (prettily)
bingoBoard.board;

// # Refactored Solution



// #Reflection
