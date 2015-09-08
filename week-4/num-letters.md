What does puts do?
What is an integer? What is a float?
What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

puts is a method that accepts strings. It prints the string argument to the console with and added carriage return and returns nil.

Basically integers are whole numbers. They cannot contain decimals, and are more commonly used than floats (AKA floating-point). A float is decimal number and is usually used for more academic applications.

Integer division returns the whole number excluding the remainder, because integers cannot contain decimals. For example 12/5 would return 2, because 5 can evenly go into 12, 2 times. The remainder would be 2. You could use what is known as the modulus, which in ruby is %, to find the remainder for positive numbers if needed.12%5 would be 2. Float division works like you would expect it to, in that it returns a decimal number. 12.0/5.0 would be 2.4

''''ruby
yearHours = 365 * 24
puts "There are #{yearHours} hours in a year."

decMin = yearHours * 60 * 10
puts "There are #{decMin} minutes in a decade."
''''
