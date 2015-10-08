// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Jamie Runyan:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
Create function named countVote that takes no parameters
  create a for loop that iterates through each voter name
    create an inner for loop that iterates through each office and candidate name pair
      IF (candidate name is alrady in corresponding office property of votecount)
        increment votecount[officename].candiatename by 1
      ELSE
        add candidate name to votecount[officename] with value 1
    end inner for loop
  end outer foorloop.
end function

create function name findWinner that takes no parameters
  for each job in voteCount
    find the property with the highest value
    store the  found property name in Officer[job].
  end for loop
end function

*/


// __________________________________________
// Initial Solution

// function findWinner(){
//   for (job in voteCount){
//     var max = 0
//     var winner;
//     for (name in voteCount[job]){
//       //console.log(name);
//       if(voteCount[job][name] > max){
//         max = voteCount[job][name];
//         winner = name;
//       }
//     }
//     officers[job] = winner;
//   }
// }


// function addvote(job, name){
//     if (voteCount.hasOwnProperty(job)){

//       if(voteCount[job].hasOwnProperty(name)){
//         voteCount[job][name] += 1;
//       }
//       else{
//         voteCount[job][name] = 1;
//       }
//     }
// }

// function countVote(){
//   for (var voterName in votes){
//     if (votes.hasOwnProperty(voterName)) {
//      for (var vote in votes[voterName]){
//         //console.log(vote);
//         // console.log(voterName + ": " + vote + ": " + votes[voterName][vote]);
//         // console.log(votes[voterName]);
//         addvote(vote, votes[voterName][vote]);
//      }
//     }
//   }
// }







// __________________________________________
// Refactored Solution


function findWinner(){
  for (job in voteCount){
    var maxNumberOfVotes = 0;
    var winner;
    for (candidate in voteCount[job]){
      if(voteCount[job][candidate] > maxNumberOfVotes){
        maxNumberOfVotes = voteCount[job][candidate];
        winner = candidate;
      }
    }
    officers[job] = winner;
  }
}


function addvote(job, candidate){
    if (voteCount.hasOwnProperty(job)){

      voteCount[job].hasOwnProperty(candidate) ? voteCount[job][candidate] += 1 : voteCount[job][candidate] = 1;

    }
}

function countVote(){
  for (var voterName in votes){
    if (votes.hasOwnProperty(voterName)) {
     for (var job in votes[voterName]){
        addvote(job, votes[voterName][job]);
     }
    }
  }
}

countVote();
findWinner();
console.log(officers);



// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?

I learned about the difference between accessing the variable placeholder vs. the property vs. the properties value. With a for .. in loop we can access each of an object's properties with a place holder using bracket notation. The place holder variable can stand in for and hold the property name, and we can use it in bracket notation to access the value stored in that property.

Were you able to find useful methods to help you with this?

yes, the for .. in loop was very helpful. When using the for .. in loop we also used the Object function .hasOwnProperty inside of an if statement, which would return true if the user had explicitly declared a property of that name. This is to prevent incorrect properties from getting added to the object, and to prevent the for in loop operating on properties that are inherited from the Object prototype. We also used the hasOwnProperty to check if a name already existed as a property of the object.

What concepts were solidified in the process of working through this challenge?

I practiced how to properly use bracket notation. I practiced  accessing nested objects and their properties. I solidified my knowledge of psuedocoding and refactoring.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)