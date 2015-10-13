/*The user needs to create a gorcery list. They need to add item and a quantity to the list. They need to be able to remove an item for the list. They need to be able to update the quantity of an item. They need to be able to print the list.

PSUEDOCODE
============

//GROCERY LIST
  create an empty array named groceryList

//ITEM PROTOTYPE
  create a constructor function named listEntry with an itemName parameter and a quantity parameter
    set the itemName of the prototype to itemName
    set the quantity of the prototype to quantity
  end function

//ADD AN ITEM AND QUANTITY TO THE LIST
  create a function named addToList with one item parameter and one quantity parameter
    create a variable entry and set it equal to a new instance of listEntry and pass it the item and quantity
    push entry into the groceryList array.
  end function

//REMOVE AN ELEMENT FROM THE LIST
  create a function name remove that takes an item parameter
    search through each index in the array for the index with the matching itemName property
    IF the item is found
      delete it from the list
      copy the entry object in the last index in the array to current index
      remove the last index from the array
    ELSE
      print "item not found"
end function

//UPDATE QUANTITY
create a function named updateQuantity that takes an item parameter and a quantity parameter
  search through each index in the array for the index with the matching itemName property
  IF the item is found
    set the entry's quantity to the quantity parameter
  ELSE
    print "item not found"
end function

//PRINT THE LIST
create a function named printList that takes no parameters
  iterate though the groceryList array and print onto one line "ITEM: itemName QUANTITY: quantity" where each is the entry's itemName and and quantity
end function
*/

//INITIAL SOLUTION

// var groceryList = [];

// function listEntry(itemName, quantity){
//   this.itemName = itemName;
//   this.quantity = quantity;
// }

// function addToList(itemName, quantity){
//   var found = false
//   for (var i = 0; i <= groceryList.length - 1; i++) {
//     if (groceryList[i].itemName === itemName){
//       console.log("item already in list");
//       found = true;
//     }
//   }
//   if (found === false) {
//     var entry = new listEntry(itemName, quantity);
//     groceryList.push(entry);
//   }
// }

// function remove(itemName){
//   var found = false
//   for (var i = 0; i <= groceryList.length - 1; i++) {
//     if (groceryList[i].itemName === itemName){
//       if (i === groceryList.length - 1) {
//         groceryList.pop();
//       }
//       else{
//         groceryList[i] = groceryList.pop();
//       }
//       found = true;
//       break;
//     }
//   }
//   if(found === false){
//     console.log("item not found");
//   }
// }

// function updateQuantity(itemName, quantity){
//   var found = false;
//   for (var i = 0; i <= groceryList.length - 1; i++) {
//     if (groceryList[i].itemName === itemName){
//       groceryList[i].quantity = quantity;
//       found = true;
//       break;
//     }
//   }
//   if(found === false){
//     console.log("Item not found");
//   }
// }

// function printList(){
//   for (var i = 0; i < groceryList.length; i++) {
//     console.log("ITEM: " + groceryList[i].itemName + " QUANTITY: " + groceryList[i].quantity);
//   }
// }

// addToList("beans", 3);
// console.log(groceryList[0]);
// updateQuantity("beans", 1);
// console.log(groceryList[0]);
// addToList("beans", 5);
// updateQuantity("bla", 2);
// console.log(groceryList[1]);
// addToList("apples", 5);
// addToList("salt", 1);
// addToList("pepper", 2);
// printList();
// console.log("///////////");
// remove("salt");
// printList();
// console.log("///////////");
// remove("beans");
// printList();

//REFACTORED

var groceryList = [];

function listEntry(itemName, quantity){
  this.itemName = itemName;
  this.quantity = quantity;
}

function find(itemName){
  for (var i = 0; i < groceryList.length; i++) {
    if (groceryList[i].itemName === itemName){
      return i;
    }
  }
  return -1;
}

function addToList(itemName, quantity){
  var entryIndex = find(itemName);
    if (entryIndex > -1){
      console.log("item already in list");
      found = true;
    }
    else{
      var entry = new listEntry(itemName, quantity);
      groceryList.push(entry);
      console.log("added " + itemName);
  }
}

function remove(itemName){
  var entryIndex = find(itemName);
      if (entryIndex === groceryList.length - 1) {
        groceryList.pop();
        console.log("removed " + itemName);
      }
      else if(entryIndex === -1){
        console.log("item not found");
      }
      else{
        groceryList[entryIndex] = groceryList.pop();
        console.log("removed " + itemName);
      }
}

function updateQuantity(itemName, quantity){
  var entryIndex = find(itemName);
    if(entryIndex > -1){
      groceryList[entryIndex].quantity = quantity;
      console.log("updated the quantity of " + itemName + " to " + quantity);
    }
    else {
    console.log("Item not found");
  }
}

function printList(){
  console.log("GROCERY LIST")
  console.log("============")
  for (var i = 0; i < groceryList.length; i++) {
    console.log("ITEM: " + groceryList[i].itemName + " QUANTITY: " + groceryList[i].quantity);
  }
}

//DRIVER TESTS
addToList("beans", 3);
console.log(groceryList[0]);
updateQuantity("beans", 1);
console.log(groceryList[0]);
addToList("beans", 5);
updateQuantity("bla", 2);
console.log(groceryList[1]);
addToList("apples", 5);
addToList("salt", 1);
addToList("pepper", 2);
printList();
remove("pepper");
remove("pepper")
printList();
remove("beans");
printList();

/* REFLECTION

What concepts did you solidify in working on this challenge?
(reviewing the passing of information, objects, constructors, etc.)

I solidified my understanding of using prototypes and objects in
JavaScript. I practiced CRUD, by creating a program incorporating
those features. I practiced modifying and passing information through
a program and using utility functions.

What was the most difficult part of this challenge? Did an array or
object make more sense to use and why?

I used an array of objects though it could have been done many ways.
I thought it made sense because an array made it easy to search
through and add and remove from the list. I used objects as the
elements in the array because each entry in the grocery list possessed
a name and a quantity, so I though it made sense to create an object
with these properties. I suppose the whole thing could have been
wrapped into an object instead of getting calling the functions statically
but I didn't really see the purpose in that.

*/