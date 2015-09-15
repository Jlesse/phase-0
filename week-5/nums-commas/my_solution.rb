# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? an integer
# What is the output? (i.e. What should the code return?)
# a string with commas representing the input number
# What are the steps needed to solve the problem?

#define separate comma with one integer parameter
  # convert the int to a string
  # convert the string to an array of chars and assign array to num_array
  # define and set pointer to point to the last element in the array
  # iterate over array from last to first UNTIL pointer points to nil
      #  before every 4th index insert a comma
  # convert array to a string
  # return string
# END method


# 1. Initial Solution
# def separate_comma(num)
#   num = num.to_s
#   num_array = num.split(//)
#   pointer = -1
#   until (num_array[pointer] == nil)
#     if ((pointer % 4) == 0)
#       num_array.insert(pointer, ",")
#       pointer -= 1
#     end
#     pointer -= 1
#   end
#   return  num_array.join
# end

# 2. Refactored Solution

def separate_comma(num)
  num_array = num.to_s.split(//)
  size = num_array.length
  if (size != 3)
    pointer = -4
    until (pointer.abs > size + 1)
      num_array.insert(pointer, ",")
      pointer -= 4
    end
  end
  return num_array.join
end
# 3. Reflection What was your process for
# breaking the problem down? What different approaches did you consider?
# Was your pseudocode effective in helping you build a successful
# initial solution? What Ruby method(s) did you use when refactoring
# your solution? What difficulties did you have implementing it/them?
# Did it/they significantly change the way your code works? If so, how?
# How did you initially iterate through the data structure? Do you feel
# your refactored solution is more readable than your initial solution?
# Why?

# My process for breaking down the problem involves a lot of drawing.
# I've found that if I draw a picture of what I think is happening and
# how I want it to happen it really helps. I write down what
# values I expect at various points in the execution, and draw a
# picture of the data structure and what is or should be in it. I also
# try to write specific pseudocode that doesn't make any
# assumptions. This is probably the hardest part because its very hard
# to think like computer. I do my best to write each pseudocode step
# as the smallest reasonable increment. My pseudocode helped me a lot
# in finding a solution, though as I was writing and testing the code I
# realized that I had made some faulty assumptions and had to revise
# my pseudocode. I am not sure if my refactored solution is
# necessarily any better. I had a lot of difficulty refactoring. I
# tried to find a method to modify every 4th index of the array when a
# condition was met but I couldn't find a method for that so I just
# had to write the logic. In my initial solution, I iterate over
# each index. In my refactored solution, I don't iterate over every
# index, I only iterate over every 4th. I am not great at Big O
# notation, but I think that this reduces the complexity from O(N) to
# O(N/4) which would help a little if it was a really large array. I
# could be wrong about that. Anyways, I wasn't able to implement as
# many built in ruby class methods as I had hoped. I am not sure if my
# refactored solution is more readable. I am pretty certain it could
# be more readable and implemented better, but I think at the very
# least it is more efficient than my initial solution. I think both
# methods are about the same in terms of readability.
