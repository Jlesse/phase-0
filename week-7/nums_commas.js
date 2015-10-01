// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Miguel Martinez .

// Pseudocode



// Initial Solution
/*Create a function name named separate comma that takes an integer parameter named number.
  Convert number to a string and set string
  counter = string.length
  WHILE counter != -1
    place a comma after 3rd index starting from the last unless the     length is evenly divisble by 3.
    decrement counter by 1
  return string
end function

*/
// MY SOLUTION
// function separate_comma(number){
//   var array = number.toString().split("");
//   array.reverse();
//   console.log(array);
//   var newArray = [];
//   var counter = 0
//   array.forEach(function(entry){
//     if(counter % 3 === 0 && counter != 0){
//       newArray.push(entry + ",");
//     }
//     else{
//       newArray.push(entry);
//     }
//     counter++;
//   });
//   newArray.reverse()
//   return newArray.join("");
// }

//MIGUEL'S solution
// function separate_comma(number){
//   var array = number.toString().split("");
//   array.reverse();
//   var comma_count = Math.floor(array.length / 3);
//   if (array.length % 3 === 0 ) {
//     comma_count = comma_count - 1;
//   }
//   var comma_pos = 3;
//   while (comma_count > 0) {
//       array.splice(comma_pos, 0, ",");
//       comma_pos += 4;
//       comma_count--;
//     }
//   return array.reverse().join("");
// }

//REFACTORED
function separate_comma(number){
  var array = number.toString().split("");
  array.reverse();
  console.log(array);
  var newArray = [];
  var counter = 0
  for (index in array){
    if(counter % 3 === 0 && counter != 0){
      newArray.push(array[index] + ",");
    }
    else{
      newArray.push(array[index]);
    }
    counter++;
  }
  newArray.reverse()
  return newArray.join("");
}
console.log(separate_comma(123456));


/* What was it like to approach the problem from the perspective of
JavaScript? Did you approach the problem differently?

It was hard approaching th problem with javascript. javascript is a
lot less forgiving than ruby, and has less magic methods built into
its core library. It required us to break the problem down into
smaller peices and use more logic and incremental steps, instead of
relying on a library methods input and output.

What did you learn about iterating over arrays in JavaScript?

I learned about the for each in iterator. I learned how to use it to
iterate over the length the an array or any collection and apply a
function to each value. I learned that if an array's length changes,
anything dependant on that length will change as well.

What was different about solving this problem in JavaScript?

I thought it was much harder. It involved a lot more one step at a
time problem solving. It seemed like it was easy to go down the wrong
track and implement the wrong methods. If the logic was overlooked we
had nothing. In ruby, this problem was easy because of the insert
method. We could just insert the the commas in place. In Javascript we
had to be more clever and come up with a solution that used a more
logic oriented smaller step by step approach.

What built-in methods did you find to incorporate in your refactored
solution?

Ultimemately we ran out of time working together on the problem, and
when we met back up we had some pretty different solutions. Migueal
used splice to modify the array in place, and he used math Math.floor
to round down to nearest number. In my refactored solution I changed
for each in loop from applying an anonymous function to each element
to simply suppying the index to the loop body. I thought that was more
readable./*
