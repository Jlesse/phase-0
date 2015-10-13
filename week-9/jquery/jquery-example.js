// U3.W9:JQuery


// I worked on this challenge with: Nathan Park.
// This challenge took me 1 hour.

$(document).ready(function(){

// Release 1:
  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.
$('body').css({'background-color': 'pink'});

//RELEASE 2: Link your Code
  bodyElement = $('body');

//RELEASE 3: Selecting Elements with jQuery
$('h1').css({"color": "blue", "border" : "2px solid red", "visibility" : "visible" });

//Release 4: Modify Elements with jQuery
$("div.mascot").find("h1").html("BOBOLINKS");

//RELEASE 5: Event Handlers

 $('img').hover(function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.birdsgallery.net/gallery/bobolink/bobolink_2.jpg')
  }, function(e){
    e.preventDefault()
    $(this).attr('src', './dbc_logo.png')
  });

// Release 6: Have Some Fun

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection: // What is jQuery?
/*
JQuery is a JavaScript library that simplifies things like DOM access and manipulation.
*/
// What does jQuery do for you?
/*
JQuery shortens the amount of code that would be
necessary to write with the JavaScript alone. The JQuery library contains features that simplify, HTML/DOM manipulation, CSS manipulation, HTML event methods,
effects and animations, and AJAX. The simple syntax of JQuery makes it
a desirable tool. The basic syntax is $(selector).action().
*/
// What did you learn about the DOM while working on this challenge?
/*
 I learned how to use JQuery to access child elements within the
DOM. You can use jQuery to select the id of a parent element and then
use find to select the specified child. There are other ways as well.
or initial solution for release for involved using the children
method, and then select the first element from children, but this was
more complicated than simplifying using find.
*/
