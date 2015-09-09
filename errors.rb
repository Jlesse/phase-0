# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# the line number where the error occurred is
# technically at 170
# 3. What is the type of error message?
# It is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# Basically it tells us it expected the keyword
# end but never saw it.
# 5. Where is the error in the code?
#    It says its at "write your reflection
# below", but its actually at on line 16. The
# loop should be closed there.
# 6. Why did the interpreter give you this error?
# because the compiler reached the end of the
# file without ending the while loop.

# --- error -------------------------------------------------------

south_park = nil

# 1. What is the line number where the error occurs?
#   41
# 2. What is the type of error message?
# I am not quite sure, it says in `<main>'. It looks likes a NameError.
# 3. What additional information does the interpreter provide about this type of error?
# it says  undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# line 41
# 5. Why did the interpreter give you this error?
# Because the compiler does not know what south_park is. It has no type and it is not assigned a value. It has not been defined.

# --- error -------------------------------------------------------

def cartman
end

# 1. What is the line number where the error occurs?
#  56
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# Cartmen is undefined for the main:Object
# 4. Where is the error in the code?
# line 56.
# 5. Why did the interpreter give you this error?
# because the keyword def was not used and the method definition did not end.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
#  62
# 2. What is the type of error message?
#   ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# I guess thats kind of based on what you want it to do.
# If you want the method to take an argument then
#its on line 72, and you would need to add a
#parameter. If you don't want to pass and argument
# then its on line 76, and the argument would need to be
#removed from the method call.
# 5. Why did the interpreter give you this error?
# because an argument was passed into the method call, but the method signature takes no arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Kyle Sucks!")

# 1. What is the line number where the error occurs?
# 96
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
#  `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#   Its on line 100.
# 5. Why did the interpreter give you this error?
# The method requires 1 parameter, but the method call gave none.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Stan")

# 1. What is the line number where the error occurs?
# 117
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# `cartmans_lie': wrong number of arguments
# 4. Where is the error in the code?
# on line 121.
# 5. Why did the interpreter give you this error? only one argument was provided in the method call, but the method requires 2.
#

# --- error -------------------------------------------------------

5 * 4.0

# 1. What is the line number where the error occurs?
# 136
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The string on line 136.
# 5. Why did the interpreter give you this error?
# when called with a fixnum, the operator *
# requires a fixnum argument, but in this case
# it was given a string, which cannot be
# coerced (converted) to a fixnum, like a float would.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/20


# 1. What is the line number where the error occurs?
# 154
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# in `/': divided by 0
# 4. Where is the error in the code?
# On the right side of the assignment statement.
#
# 5. Why did the interpreter give you this error?
#  Dividing by zero is illegal. Police are on the way.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 171
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# require_relative': cannot load such file --
#/Users/julianlesse/devbootcamp/phase0/phase-
#0/cartmans_essay.md
# 4. Where is the error in the code?
# In the name of the non-existent file.
# 5. Why did the interpreter give you this error?
# require relative was looking for the file
# cartmans_essay.md in the same directory, but
# it doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
How did you figure out what the issue with the error was?
Were you able to determine why each error message happened based on the code?
When you encounter errors in your future code, what process will you follow to help you debug?

The 2nd one was the hardest for me to read because the placement of the error type was different than in the example. Once I caught on to that it was pretty simple. I was able to determine the all of the error messages happened based on the error massage and the code. In the future, I will definitely read the error message thoroughly before looking for the bug in the code, and try and determine logically what the issue is based on the flow of the code. If its especially bad I might rubber ducky debug.

=end