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

var groceryList = [];

function listEntry(itemName, quantity){
  this.itemName = itemName;
  this.quantity = quantity;
}

function addToList(itemName, quantity){
  var entry = new listEntry(itemName, quantity);
  groceryList.push(entry);
}

function remove(itemName){
  var found = false
  for (var i = 0; i <= groceryList.length - 1; i++) {
    if (groceryList[i].itemName === itemName){
      if (i = groceryList.length -1) {
        groceryList.pop();
      }
      else{
        groceryList[i] = groceryList.pop();
      }
      found = true;
      break;
    }
  }
  if(found = false){
    console.log("item not found");
  }
}

function updateQuantity(itemName, quantity){
  var found = false;
  for (var i = 0; i <= groceryList.length - 1; i++) {
    if (groceryList[i].itemName === itemName){
      groceryList[i].quantity = quantity;
      found = true;
      break;
    }
  }
  if(found = false){
    console.log("Item not found");
  }
}
