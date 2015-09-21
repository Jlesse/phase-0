# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

=begin

Define an initialize method for the die class that takes one array parameter named label.
  IF label is an empty array
    raise an argument error
  ELSE
    set instance variable sides_array = label
    set instance variable sides = length of sides array
END method

Create an attribute reader for sides instance variable


Define a method named roll
  in the method body create local variable rand_index
  set rand_index equal to a random inclusive number between 0 and sides - 1
  return the element from sides_array located at rand_index.
END method


=end

# Initial Solution

# class Die


#   def initialize(labels)
#     if (labels.empty?)
#       raise ArgumentError.new("Error: The die must have at least 1 side!")
#     else
#       @sides_array = labels
#       @sides = @sides_array.length
#     end
#   end

#   attr_reader :sides

#   def roll
#     rand_index = rand(0..(@sides-1))
#     return @sides_array.at(rand_index)
#   end
# end

# my_die = Die.new([1,2,3,4,5,6])

# puts my_die.roll

# Refactored Solution


class Die


  def initialize(labels)
    if (labels.empty?)
      raise ArgumentError.new("Error: The die must have at least 1 side!")
    else
      @sides_array = labels
      @sides = @sides_array.length
    end
  end

  attr_reader :sides

  def roll
    @sides_array.sample
  end
end

my_die = Die.new(["a","b","c","d","e","f"])

puts my_die.roll





# Reflection
=begin
What were the main differences between this die
class and the last one you created in terms of implementation? Did you
need to change much logic to get this to work? What does this exercise
teach you about making code that is easily changeable or modifiable?
What new methods did you learn when working on this challenge, if any?
What concepts about classes were you able to solidify in this
challenge?

I don't think I had to change a lot of logic to get it work. I used a
lot of the same code. I did have to make some small changes, but I
thought it was pretty similar. Most of the logic I changed just involved
dealing with any array instead of an int.

DRY, don't repeat yourself. DRY stands for don't repeat yourself. Just
kidding, Its good to write reusable code. You can write a method to do
something and use it everywhere, instead of writing the sames lines of
code over and over again. You can reference past work and copy it into
a new application to make use of the methods and logic you've already
built, albeit usually with small modifications.

I learned the Array class's sample method. It just takes a random element (or
elements if you provide and argument to tell it how many) from an
array and returns it. I used sample in my refactored solution.

I know it sounds really dumb, but its the small details that I
frequently overlook. I forgot the @ before one of my instance
variables and tried to figure out what the hell I was doing wrong for
20 minutes. I need to be more careful with my typing and clearly read my
code when looking for errors. I've found that it is often very small
but basic mistakes that break a program.
=end
