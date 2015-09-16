# Die Class 1: Numeric

# I worked on this challenge myself

# I spent [] hours on this challenge.

# 0. Pseudocode
#write constructor for die class that takes an integer as a parameter named side_num
  #UNLESS sides > 1
    # raise an argument error
  #END unless
  #initialize instance variable sides with side_num
#END constructor

#write a method named sides to return the number of sides
  # write return sides in method
#END method

#define a method named roll
  #in the method body create local variable cur_side
  #set cur_side equal to a random inclusive number between 1 and sides
  #return cur_side
#END method



# Input: pass an int into die constructor
# Output: return a number between 1 & passed number when roll method is called. return number of sides when sides is called.
# Steps:


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     unless (sides > 1)
#       raise ArgumentError.new("Error: The die must have at least 1 side!")
#     end
#     @sides = sides
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     return rand(1..@sides)
#   end
# end

# my_die = Die.new(6)
# puts my_die.sides
# puts my_die.roll





# 3. Refactored Solution

class Die
  attr_reader :sides

  def initialize(sides)
    unless (sides > 1)
      raise ArgumentError.new("Error: The die must have at least 1 side!")
    end
    @sides = sides
  end

  def roll
    return rand(1..@sides)
  end
end

my_die = Die.new(6)
puts my_die.sides
puts my_die.roll


# 4. Reflection What is an ArgumentError and why would you use one?
# What new Ruby methods did you implement? What challenges and
# successes did you have in implementing them? What is a Ruby class?
# Why would you use a Ruby class? What is the difference between a
# local variable and an instance variable? Where can an instance
# variable be used?

# an ArgumentError is a decedent of the Exception class. It is used
# when an incorrect argument is passed, whether its the wrong type,
# number of parameters, or otherwise something programmer defined.
# ArgumentErrors may be subclassed, or an explanatory string may be a
# attached when the Exception is raised. I used an attr_reader when I
# refactored, and I used the ruby Rand class to generate a random
# number. They appear to work as expected. A ruby class contains
# variables and methods. An objects may be created from that class and
# posses the variables and methods of the class. A ruby class is a
# blueprint for building objects of that type, or otherwise its
# methods or variables are used statically (like the rand class). A
# local variable is created and only accessible inside the method body.
# An instance variable is created in the class body and accessible
# anywhere inside the class. Instance variables can be used in the
# class, or in the objects created from the class, if accessor methods
# are provided to access the instance variables.
