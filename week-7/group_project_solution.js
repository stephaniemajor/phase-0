// Add the finished solution here when you receive it.
var sum = function(list) {
  var result = 0;
  for (var index = 0 ; index < list.length; index++) {
    result += list[index];
  }
  return result;
};

console.log(sum([1,2,3,4,5,5,7]));

var mean = function(list) {
    var result = sum(list)/list.length;
  return  result;
};
console.log(mean([1,2,3,4,5,5,7]));

var median = function(numbers) {
  var max = numbers[0];
  var min = numbers[0];

  for (var i = 1; i < numbers.length; i ++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
    
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }

  var result = (max + min) / 2;
  return result;
};
console.log(median([1,2,3,4,5,6])); 


// Megan Swanby- User Stories- Person 1

// As a user, I want to build a unique calculator program that completes a limited number 
// of calculations- namely sum, median and mean. 

// I want the calculator to accept a series of numbers.
// When you enter a series of numbers into the calculator, 
// I want it to return the sum of all the numbers.

// I also want the calculator to return the exact average of all the numbers in that series.

// Finally, I want to be able to find the median of that set of numbers. It should return that amount.


// Stephanie Major - User Stories to Pseudocode - Person 2
// A sum function
// input: array or list of integers
// output: sum of the integers 
/// Create a function for the sum. 
//   create a variable named result at 0. 
//   Loop over elements of input array. 
//    add the item value to the result
//   Return the result


// A mean function:
// input: array or list of integers and the result of the sum function
// output: mean of the integers
// Create a function for the mean. 
//   create a variable named result  being the division of the result from the sum function divided by the length of the list. 
//   Return the result

// An median function:
// input: array or list of integers
// output: median of the integers
// Create a function for the median. 
//   create a variable named result equal to the difference between the minimum value and the maximm value divided by 2
//   Loop over elements of input array to find the maximum element. 
//     Return the maximum val
// Loop over elements of input array to find the minimum element. 
//    Return the minimum value
//Return the result   







//Thomas Farr - refactor and user stories
// As a user, I want to input a multitude of numbers and receive the sum of those numbers.

function sum(numbers) {
  var result = 0;

  for (var i = 0; i < numbers.length; i ++) {
    result += numbers[i];
  };

  return result;
}

// As a user, I want to find the average of a set of numbers. To do this I'll need to get the sum of the numbers and divide the sum by the amount of numbers I put in.

function mean(numbers, sum) {
  var result = sum / (numbers.length);
  return result;
}

// As a user, I want to input numbers and have them sorted. Once they are sorted I want to have the number that occurs in the middle of the pack of the numbers be returned to me. If there are an even number of numbers I put in, I'll want the two middle numbers to be added together and divided to find the average of those two numbers.

function median(numbers) {
  var result = (max - min) / 2;
  var max = numbers[0];
  var min = numbers[0];

  for (var i = 1; i < numbers.length; i ++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  for (var j = 1; j < numbers.length; j ++) {
    if (numbers[j] < min) {
      min = numbers[j];
    }
  }

  return result;






// __________________________________________
// Tests:  Do not alter code below this line.


var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7];
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7];



function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
);

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
);

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
);

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
);

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
);

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
);

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
);

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
);

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
);





