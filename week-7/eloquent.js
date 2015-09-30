// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var one = 1;
console.log(one + 1);

/* Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console rather than node since node does not support prompt or alert). Paste your program into the  eloquent.js file */

var favFood = prompt("What's your favorite food", ""); alert(favFood + " is my favorite too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// TRIANGLE
var row = "#";
while(row.length < 8){
  console.log(row);
  row = row + "#";
}

// FIZZBUZZ
for(i = 1; i < 101; i++){
  if (i%3 === 0 && i%5 === 0) {
    console.log("FizzBuzz")
  }
  else if (i%3===0) {
    console.log("Fizz")
  }
  else if (i%5===0) {
    console.log("Buzz")
  }
}

// Chess board
var row = 1;
var line = "";
var size = prompt("what size(width and height) board would you like to generate?");
var pattern;
while(row <= size){
  if(row%2 === 0){
    pattern = " #";
  }
  else{
    pattern = "# "
  }
  for(i = 0; i< size/2; i++){
    line = pattern + line;
  }
    console.log(line)
    line = ""
    row++

}


// Complete the `minimum` exercise.

function minimum(num1, num2){
  if (num1<=num2) {
    return num1;
  }
  else{
    return num2;
  }
}
console.log(minimum(3,5))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
age: 25,
favorite_foods: ["Pizza", "Donutes", "Ice Cream"],
quirk: "I really really like 70's german prog rock"
};