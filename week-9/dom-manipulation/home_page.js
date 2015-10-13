// DOM Manipulation Challenge


// I worked on this challenge with: Nathan Park.


// Add your JavaScript calls to this page:


// Release 1:
document.getElementById("release-0").className = "done";



// Release 2:
document.getElementById("release-1").style.display = "none";


// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 5:
var nodes = document.getElementsByClassName("release-4");

for(var i = 0; i < nodes.length; i++){
  nodes[i].style.fontSize = "2em";
};

var temp = document.getElementById('hidden');
document.body.appendChild(temp.content.cloneNode(true));

// Reflection:
// What did you learn about the DOM?
/*
I learned how the DOM organizes and categorizes different nodes. Some API's return a single node or element, while others return a list. The DOM's
nodes a organized into a tree, and may have a parent, grand-parent,
and multiple children.
*/

// What are some useful methods to use to manipulate the DOM?
/*
document.getElemetsById() is often used to select a an element with a
given id. Once you have selected and returned the element you can append the statement with things like .innerHTML() to change the HTML content of the node, or .style to add CSS. You can even use it to select the ID of a template and then use document.body.appendChild(), to add it it to the body of your page. You can see all of the methods that we used in the code, and it should be evident why they are useful.
*/
