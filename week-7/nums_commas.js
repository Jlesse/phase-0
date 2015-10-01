// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

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

function separate_comma(number){
  var array = number.toString().split("");
  array.reverse();
  console.log(array);
  var newArray = [];
  var counter = 0
  array.forEach(function(entry){
//     console.log(entry);
    if(counter % 3 === 0 && counter != 0){
      //console.log(entry)
      newArray.push(entry + ",");
    }
    else{
      newArray.push(entry);
    }
    counter++;
  });
  newArray.reverse()
  return newArray.join("");

}

console.log(separate_comma(1234567));