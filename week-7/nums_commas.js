// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: rzarl.

// Pseudocode



// Initial Solution




// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection
// I worked on this challenge with: Kevin Sullivan, Stephanie Major

// Pseudocode

// separateComma(1569743) == "1,569,743"

// input: multi-digit integer
// output: string version of a comma separated series of numbers 

// set a variable to received integer, 
// turn it into a string
// access each element in the string
// initialize a new variable
// insert each element into new variable
// add commas when needed
// output the new variable

// Initial Solution

var separateComma = function(number) {
  // turn it into a string
  var numString = number.toString(); 
  var len = numString.length
  var result = "";
 
  // access each element in the string  
  for ( var i = 1; i <= len; i ++ ) {
    if ( i % 3 == 0 ) {
      result = numString[len-i] + result;
      // add commas when needed
      if (result.length < len) {
        result = "," + result;
      }
    }  
    else {
      result = numString[len-i] + result;
    }
  }
  // output the new variable
  return result;
};

// Refactored Solution
// Your Own Tests (OPTIONAL)

console.log(separateComma(12123124));

// Reflection
// •	What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// I have to admit I didn’t understand who to do it the first time and I am struggling with this second time. This being said, my partner had a better way to approach the problem compared to what I had done with Ruby. My problem is not the language, it is the understanding of the modulo
// •	What did you learn about iterating over arrays in JavaScript?
// Very similar to Ruby, I don’t think I learn anything special about iteration. I find it easier than with Ruby
// •	What was different about solving this problem in JavaScript?
// My pair started by first converting the number into a string. So, it wasn’t the language that was different but the approach.
// •	What built-in methods did you find to incorporate in your refactored solution?
// I did not take the time to refractor.


