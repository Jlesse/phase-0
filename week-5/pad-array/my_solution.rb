# Pad an Array

# I worked on this challenge with Marvy Tagala

# I spent 1:15 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? pad([1,2,3],5,"bee")
# What is the output? (i.e. What should the code return?) [1,2,3,"bee","bee"]
# What are the steps needed to solve the problem?

#PAD NON-DESTRUCTIVE
#====================
# define pad method wtih 3 parameters: array, minimum, and value (defualt is nil)
  #Create a new array named new_array
  #Set new_array to array
  #create and set counter to min_size - array.length
  #WHILE counter > 0
    #push the value onto the tail of the array
    #decrement counter by 1
  #END WHILE
  #Return new_array
#END method

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   new_array = array
#   counter = min_size - array.length
#   while (counter > 0)
#     new_array.push(value)
#     counter -=1
#   end
#   return new_array
# end



# def pad(array, min_size, value = nil) #non-destructive
#   new_array = Array.new
#   new_array = array.dup
#   counter = min_size - array.length
#   while (counter > 0)
#     new_array.push(value)
#     counter -=1
#   end
#   return new_array
# end

# test = [1,2,3]
# puts pad(test,5,"bee")
# puts test

# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  new_array.fill(value, array.length..min_size - 1)
  return new_array
end

test = [1,2,3]
puts pad(test,5,"bee")
puts test


def pad!(array, min_size, value = nil) #destructive
  new_array = array
  new_array.fill(value, array.length..min_size - 1)
  return new_array
end










# 4. Reflection Were you successful in breaking the problem

# down into small steps? Once you had written your pseudocode, were you
# able to easily translate it into code? What difficulties and successes
# did you have? Was your initial solution successful at passing the
# tests? If so, why do you think that is? If not, what were the errors
# you encountered and what did you do to resolve them? When you
# refactored, did you find any existing methods in Ruby to clean up your
# code? How readable is your solution? Did you and your pair choose
# descriptive variable names? What is the difference between destructive
# and non-destructive methods in your own words?

# I think we were able to break the problem down into smaller steps. We
# determined the input and output we wanted and discussed possible ways
# to do each step while pseudocoding. When writing our code we ran into
# a small snag with the non destructive method. When assigning the
# argument array value to the new array, the = assignment operator
# creates a shallow copy. Because the new_array variable pointed to the
# same memory location as the old array, any changes to the new_array
# were also made to original array. Because we wanted to make the method
# non-destructive, we used .dup, which is an Object class method that
# creates a deep copy of the object.

# When we refactored we used the .fill Array method to fill the array
# from the tail of the existing array up until the min_size.

# I think our refactored solution is reasonably short and readable, and
# I think our variables names are good. Destructive methods change the
# object that is calling the method, non-destructive methods return a
# deep copied new object with changes.
