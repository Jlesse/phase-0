# Build a simple guessing game


# I worked on this challenge myself
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
=begin
Create initialize method that takes an int parameter named answer
  set instance variable ans = answer
  set instance variable solved to false
END method

Create method named solved?
  return solved
END method

Create method named guess that takes an int parameter
  IF guess > ans
    result = :high
  ELSIF guess < ans
    result = :low
  ELSE
    result = :correct
    solved = true
  END the if block
  RETURN result
END the method

=end


# Initial Solution

class GuessingGame
  def initialize(answer)
    @ans = answer
    @solved = false
  end

  def solved?
    return @solved
  end

  def guess(num)
    if num > @ans
      result = :high
      @solved = false
    elsif num < @ans
      result = :low
      @solved = false
    else
      result = :correct
      @solved = true
    end
    return result
  end
end

game = GuessingGame.new(10)
puts game.solved?

puts game.guess(5)
puts game.guess(20)
puts game.solved?
puts game.guess(10)
puts game.solved?



# Refactored Solution

# I couldn't really see how to refactor it...


# Reflection
=begin
How do instance variables and methods represent
the characteristics and behaviors (actions) of a real-world object?

Instance variables are like the attributes that a real world object
possesses and methods are like the actions that object is able to
perform. Lets say you have a student. That student has a breakfast
food preference. Their food preference would could an instance
variable of the student object. Now that student wants to eat
breakfast. eat_breakfast could be an instance method the student
object can perform.

When should you use instance variables? What do they do for you?

Instance variable should be used when the state of an object needs to
be held. An object may have particular characteristics and these may
need to held in instance variables. Instance variables allow you to
share information inside of an object, between all methods that that
object possess. They also allow you to hold information about the
state of the object itself.

Explain how to use flow control. Did you have any trouble using it in
this challenge? If so, what did you struggle with?

Flow control is basically the logical flow of the execution of a
program. Often it requires logical operators, such as if,  or, else,
and, etc., to determine which code block is executed next. I did not
have any trouble with control flow in this program. I thought the
logic was pretty simple, so it was not hard to implement working
control flow.

Why do you think this code requires you to return symbols? What are
the benefits of using symbols?

Cymbals are unique and take up less space than strings. Cymbal compare
faster than strings, and are retrieved quicker, which enhances
performance. When a cymbal is defined, it is defined once, and added
to the cymbal table. Whenever it is referenced in the program the same
exact cymbal is used. This saves a considerable amount of memory
compared to strings. Even if 2 strings are alphanumerically identical,
their object IDs are different (unless otherwise forced to be the
same) which consumes more memory. Cymbals also cannot be changed at
runtime, and so are good to use when immutability of a key is
required. If Strings were returned a instead cymbals for the guess
method, each time the method executed, a new string object would be
returned, which could eat up memory if a lot of guess are being made.

=end