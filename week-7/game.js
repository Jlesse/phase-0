 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:Kill the Wizard
// Overall mission: kill all monsters in the dungeon and then kill the wizard, and doe not die.
// Goals: kill goblin, kill ogre, kill dragon, kill wizard.
// Characters: Barbarius
// Objects: player{name: Barbarius attack: 4 defense: 4 health: 20 name: potions:0 equiped:normal_sword}
//          goblin{name: goblin attack:0 defense:2 health:8 potions:1}
//          ogre{name: ogre attack:2 defense:6 health:10 potions: 1}
//          dragon{name: dragon attack:5 defense:8 health:15 potions: 1}
//          wizard{name: wizard attack:6 defense:5 health:20 potions:0}
// Functions:
// display_player_attributes
// display_monster_appearance
// battle
// attack
// take_damage
// use_potion
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
//create monster_array
//create variable current_dungeon = 0
//create varibale cur_monster
//create game_done = false;

//INTRO METHOD
//define intro function with no parameters
//  write the intro story to the console
//end function
//
/*
MAIN LOOP
define main_loop function with no parameters
  display_monster
  create variable option
  while game != game_done
    print menu options
      1. use a potion
      2. go to next room
      3. exclaim "Damn you wizard!!!"
      4. exit game
    prompt the user for input and set option
    create switch that takes option
      case 1 : call the use_potion function
      case 2 : call the battle function
      case 3 : print "Damn you wizard!!!"
      case 4 : game_done = true
      defualt case : "Not a valid option! Use your head Barbarian!"
end of function

DISPLAY_PLAYER_ATTRIBUTES
define function display_player_attributes that takes no parameters
  print to console each attribute
end function

DISPLAY_MONSTER_APPEARANCE
define function display_monster_appearance that take no parameters
  create a switch with current dungeon
    case 0: to console "describe castle"
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
    print to console object.name + "'s attack landed for " + attack
    call take_damage(attack,object2)
  ELSE
    print to console "attack missed"
END method

BATTLE
define a function battle that takes no parameters
  display_monster_appearance
  While cur_monster.health!=0 || player.health !=0
    WHILE option != 1 || option!=2
      print "HEALTH: " + player.health
      print "1. attack "
      print "2. use_item"
      prompt for use input and set option with it
      IF option == 1
        attack(player, cur_monster)
      IF ELSE option == 2
        use_item
      ELSE
        print "Not a valid option! Use your head Barbarian!"
    attack(cur_monster, player)
  IF cur_monster.health  <= 0
    print "You killed the " + cur_monster.name
    IF cur_dungeon == 4
      print "You killed that blasted wizard dead! you got a shit ton of gold from his wizard chest!"
      game_done = true
    ELSE
      player.potions++;
      print "you got a health potion"
      cur_monster = monster_array[++cur_dungeon]
  else
    print "You were killed by " + cur_monster
    game_done = true
END method

USE POTION
define a function name use_potion that takes no parameters
  If potions != 0
    print "you healed 5 points"
    if player.health + 5 > 20
      player.health = 20
    else
      player.health = player.health + 5
    potions--
  else
    print "you have no potions to use!"
end method
*/


// Initial Code

function charactor(name, attack, defense, health, potions){
  this.name = name;
  this.attack = attack;
  this.defense =defense;
  this.health = health;
  this.potions = potions
}

//Charactor objects
var player = new charactor("Barbarius", 4, 4, 20, 0);
var goblin = new charactor("Goblin", 0, 2, 8, 1);
var ogre = new charactor("Ogre", 2, 6, 10, 1);
var dragon = new charactor("dragon", 5, 8, 15, 1);
var wizard = new charactor("Wizard", 6, 5, 20, 0);

var monster_array = [goblin, ogre, dragon, wizard];
var cur_dungeon = 0;
var cur_monster;
game_done = false;

function intro(){
  console.log("You approach the castle.");
  console.log("You loudly exclaim 'I'm comin for you wizard man!'");
  console.log("A lightning bolt crashes down and cracks the earth as you enter the castle.");
}

function main_loop(){
if(game_done == true){
  return "GAME OVER";
}
  //display_monster();
  var option;
    var prompt = require('prompt');
    console.log("OPTIONS");
    console.log("=========");
    console.log("1. Use a potion");
    console.log("2. Go to the next room");
    console.log("3. Exclaim ' Die you wizard!!!'");
    console.log("4. Exit game");

      prompt.get(['option'], function(err, result){
        option = result.option;
        console.log("option is: " + option);
        callback()
      });

    function callback(){
      switch (option){
        case 1:
         //use_potion();
          break;
        case 2:
          //battle();
          break;
        case 3:
          console.log(" Die you wizard!!!");
          break;
        case 4:
          game_done = true;
          break;
        defualt:
           "Not a valid option! Use your head Barbarian!"
      }
      main_loop();
    }
}

main_loop();



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