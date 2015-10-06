/*
Gradebook from Names and Scores
I worked on this challenge with Hana Worku
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

// __________________________________________
// Write your code below.

// var students = ["Joseph", "Susan", "William", "Elizabeth"];

// var scores = [ [80, 70, 70, 100],
//                [85, 80, 90, 90],
//                [75, 70, 80, 75],
//                [100, 90, 95, 85] ];

// var gradebook = {};

// gradebook.addScore = function(name, score){
//   gradebook[name].testScores.push(score);
// };

// gradebook.getAverage = function(name){
//   return gradebook.average(gradebook[name].testScores);
// };

// function average(array){
//   var sum = 0;
//   for (var i = 0; i < array.length; i++) {
//     sum += array[i];
//   }
//   return sum/array.length;
// }

// gradebook.average = average;

// for(i=0; i < students.length ; i++){
//   gradebook[students[i]] = {};
//   gradebook[students[i]].testScores = scores[i];
// }


// console.log(gradebook.average(gradebook["Joseph"].testScores));
// console.log(gradebook.getAverage("Joseph"));

// __________________________________________
// Refactored Solution

var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];

var gradebook = {};

gradebook.addScore = function(name, score){
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name){
  return gradebook.average(gradebook[name].testScores);
};

function average(array){
  var sum = array.reduce(function(a, b) {
    return a + b;
  });
  return sum/array.length;
}

gradebook.average = average;

for(i=0; i < students.length ; i++){
  gradebook[students[i]] = {testScores: scores[i]};
}


console.log(gradebook.average(gradebook["Joseph"].testScores));
console.log(gradebook.getAverage("Joseph"));






// __________________________________________
// Reflect
// What did you learn about adding functions to objects?
/*   I learned that
objects don't recognize an anonymous function as a function type when
assigned to a variable property. For an object's property to be
considered a function the function must be declared and named above
the assignment and then explicitly assigned to the function property.

// How did you iterate over nested arrays in JavaScript?

  We used bracket notation and a for loop. Its basically ecactly that
  same as in ruby. We passed in a variable to the bracket that held
  the current index to retrieved, and used the for loop to increment
  the pointer and iterate through each element.

// Were there any new methods you were able to incorporate? If so,
// what were they and how did they work?

  We used the reduce in our refactored solution to sum all of the
  elements in an array. To use reduce you pass in a function, The
  function supplied may have up to 4 arguments. The first argument
  would be the previous value, which is what was returned from the
  last invocation of the function, the current value, which is the
  current element being processed in the array, the current index, and
  the array reduce was called on. these argument are optional, but to
  use them properly, they must be supplied the proper order. We only
  used previous value and current value and named them a and b. we
  just repeatedly added b to a as summed all of the elements.

*/






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)