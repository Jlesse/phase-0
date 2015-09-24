# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Colin Razevich.
# I spent 1 hour on this challenge.

# Pseudocode

# def initialize
  # convert the argument to a string.
  #Check that the string length is equal to 16, if not raise argument error
  #split number into array and set it as instance variable named number
#END method


#define check_card method
  #convert in to an array
  #from second to last index iterate over every even index until at the end of the array
    #multiply each accesed index by 2
  # combine numbers into one string, then split the string out into single digits
  #create local variable sum initialized to 0
  #Iterate through the array
    #add each element to sum
  #END iteration
  #IF sum % 10 is 0
    #return true
  #ELSE
    #return false
#END method




# Input: [1,2,3,4,5,6,7].map.with_index{|v,i| i % 2 == 0 ? v * 2 : v } 28
# Output:
# Steps:


# Initial Solution
# sum = 0
# array.each do |i|
#   sum =+ i
# end
# if sum % 10 == 0
#   p "Yay we did it"
# else
#   p "god damn it"
# end

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(number)
#     number = number.to_s
#     unless number.length == 16
#       raise ArgumentError.new("Invalid card number")
#     end
#     @number = number.split('')
#   end

#   def check_card
#     placeholder = @number.map.with_index{|v,i| i % 2 == 0 ? v.to_i * 2 : v.to_i }
#     temp = placeholder.join.chars.map{|x| x.to_i}
#     sum = 0
#     temp.each do |add|
#       sum += add
#     end
#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end

#   end

# end

# card = CreditCard.new(4563960122001999)
# p card.check_card


# Refactored Solution

class CreditCard
  def initialize(number)
    number = number.to_s
    unless number.length == 16
      raise ArgumentError.new("Invalid card number")
    end
    @number = number.split('')

  end

  def convert
    placeholder = @number.map.with_index{|v,i| i % 2 == 0 ? v.to_i * 2 : v.to_i }
    return placeholder.join.chars.map{|x| x.to_i}
  end

  def check_card

    sum = 0
    convert.each do |add|
      sum += add
    end
    if sum % 10 == 0
      return true
    else
      return false
    end

  end

end



card = CreditCard.new(4563960122001999)
p card.check_card



# Reflection
=begin
What was the most difficult part of this challenge
for you and your pair?

The most difficult part was figuring out how we were going to convert
the integer to an array of integers. We ended up converting it to
string, then to a char array, and then each char back to in int. I
would of thought that there would be a Fixnum method to do it for us,
but we weren't able to find one if there was.

What new methods did you find to help you when you refactored?

we didn't find any new methods, but we got rid of some unneeded
variables, and broke down the problem a little further and created a
utility method to convert the char array to the int array.

What concepts or learnings were you able to solidify in this
challenge?

In this challenge I solidified my understanding of conversion between
types in ruby. I practiced using arrays, writing pseudocode, and using
enumerable and class methods to iterate over and modify data
structures.

=end