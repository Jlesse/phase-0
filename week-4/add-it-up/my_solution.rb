# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Pamela Antonow

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers
# Output: The sum of the numbers in the array
# Steps to solve the problem.

#Define a method called total that takes an array as an argument,
#create a variable called total and set it equal to 0
#iterate over the array using .each to get the numbers in the array
#set total = to total + element
#return total
#end loop , and end method


# 1. total initial solution

def total(numbers)
 total = 0
 numbers.each do |num|
  total += num
 end
return total
end

# 3. total refactored solution

#couldn't find a way to refactor :(

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# Input: an array
# Output: a string
# Steps to solve the problem.

#define a method called sentence_maker which takes an array as an argument
#set a variable called sentence equal to an empty string
#do word_list.each to get each element
# set sentence equal to the sentece plus the element plus space
#end the loop
#capitalize the sentence
#removed the second to last index and return sentence follow by a period.


# 5. sentence_maker initial solution

def sentence_maker(word_list)
 sentence = ""
 word_list.each do |word|
  sentence = sentence + word.to_s + " "
 end
  sentence.capitalize!
 return sentence[0 ..-2] + "."
end


# 6. sentence_maker refactored solution

def sentence_maker(word_list)
 sentence = ""
 word_list.each do |word|
  sentence += word.to_s + " "
 end
 sentence.capitalize![0 ..-2] + "."
end

