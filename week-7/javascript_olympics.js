
 // JavaScript Olympics

// I paired with: Eric Shou on this challenge.

// This challenge took me 2 hours.

// Bulk Up

// Warm Up
// var athlete1 = {name:"Bob" , event:"cool event" };
// var athlete2 = {name:"Jim" , event:"other event" };
// var athlete3 = {name:"Jane" , event:"event thing" };

// var olympics = [athlete1, athlete2, athlete3];

// var win = function (athlete) {
//   console.log(athlete.name + " won the " + athlete.event);
// }


// var add_win = function(athletes){
//     for(i=0; i < athletes.length; i++){
//        athletes[i].win = function() {console.log(this.name + " won " + this.event + ".")};
//     }
// };



// add_win(olympics);
// athlete1.win();




// // Jumble your words

// function string_reverse(string){
//   array = string.split("");
//   array.reverse();
//   string = array.join("");
//   return string;
// }

// console.log(string_reverse("test"));

// // 2,4,6,8

// function isEven(num) {
//   return (num % 2 == 0);
// }
// function even(array){
//   return array.filter(isEven);
// }
// console.log(even([1,2,3,4,5,6]));

// // "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this
challenge?

I practiced creating objects with literal notation and constructors. I
learned about function expressions, function statements, and anonymous
functions. I practiced adding a method to an object and calling that
method. I learned about the this keyword, and how to use it.

What are constructor functions?

Constructor functions are kind of like the initialize method in ruby
classes. Constructor functions specify and set attributes and/or
functions for an object prototype. New objects can be created from the
constructor, somewhat like how new objects can be created from classes
in ruby.

How are constructors different from Ruby classes (in your research)?

They are similar but the syntax is very different. Javascript
constructors are actually functions whereas ruby classes are not. You
can treat a Javascript constructor in the same way you treat any other
functions. Javascript constructors are actually more like a ruby class
and its initialize method all rapped into one. Any variable defined in
the constructor must us the this.variable keywords in order to signal
the constructor that it belongs to it. /*
