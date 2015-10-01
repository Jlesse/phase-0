 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:Kill the Wizard
// Overall mission: kill all monsters in the dungeon and then kill the dragon.
// Goals: kill goblin, kill ogre, kill dragon, kill wizard.
// Characters: playerName The Barbarian
// Objects: player{attack: 4 defense: 4 health: 20 name: items:[] equiped:normal_sword}
//          goblin{attack:0 defense:2 health:8 items:[health_potion]}
//          ogre{attack:2 defense:6 health:10 items:[health_potion]}
//          dragon{attack:5 defense:8 health:15 items:[health_potion, sword_of_killing]}
//          wizard{attack:6 defense:5 health:20 items:[gold]}
// Functions:
// display_player_attributes
// display_monster_appearance
// battle
// attack
// take_damage
// equip_item
// use_item
// main_loop
// intro
//
// Pseudocode
//
//create player object
//create goblin object
//create ogre object
//create dragon object
//create wizard object
//create variable current_dungeon = 0
//create game_done = false;
//INTRO METHOD
//define intro function with no parameters
//  prompt for name and set the players name to the response.
//  write the intro story to the console
//end function
//
/*
MAIN LOOP
define main_loop function with no parameters
  create a swtich that takes current_dungeon
    if case print corresponding story for current_dungeon 0-4
    if no case is met, print "A magic error has occured!"
  create variable option
  while game != game_done
    print menu options
      1. to equip an item
      2. use an item
      3. go to next room
      4. exclaim "Damn you wizard!!!"
      5. exit game
    prompt the user for input and set option
    create switch that takes option
      case 1 : call the equip_item function
      case 2 : call the use_item function
      case 3 : call the battle function
      case 3 : print "Damn you wizard!!!"
      case 5 : game_done
      defualt case : "Not a valid option! Use your head Barbarian!"
end of function

DISPLAY_PLAYER_ATTRIBUTES
define function display_player_attributes that takes no parameters
  print to console each attribute
end function

DISPLAY_MONSTER_APPEARANCE
define function display_monster_appearance that take no parameters
  create a switch with current dungeon
    case 1: to console "describe goblin"
    case 2: to console "describe ogre"
    case 3: to console "describe dragon"
    case 4: to console "describe wizard"
    defualt: to console "error, no monster desciption"
end function

TAKE_DAMAGE
define function take_damage that takes an int parameter named damage and an object named charactor
  charactor.health -= damage
end method

ATTACK
define method attach that takes two object parameters
  set rand to a random number between 1 and 6
  add object1.attack to the rand and set attack
  IF object1.attack > object2.defense
    print to console "attack landed for " + attack
    call take_damage(attack,object2)
  ELSE
    print to console "attack missed"
END method

BATTLE
define a function battle that takes no parameters
  call display_monster_appearance




// Initial Code






// Refactored Code






// Reflection
//
//
//
//
//
//
//
//