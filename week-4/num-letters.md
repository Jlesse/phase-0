What does puts do?
What is an integer? What is a float?
What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

puts is a method that accepts strings. It prints the string argument to the console with and added carriage return and returns nil.

Basically integers are whole numbers. They cannot contain decimals, and are more commonly used than floats (AKA floating-point). A float is decimal number and is usually used for more academic applications.

Integer division returns the whole number excluding the remainder, because integers cannot contain decimals. For example 12/5 would return 2, because 5 can evenly go into 12, 2 times. The remainder would be 2. You could use what is known as the modulus, which in ruby is %, to find the remainder for positive numbers if needed.12%5 would be 2. Float division works like you would expect it to, in that it returns a decimal number. 12.0/5.0 would be 2.4.


```ruby
yearHours = 365 * 24
puts "There are #{yearHours} hours in a year."

decMin = yearHours * 60 * 10
puts "There are #{decMin} minutes in a decade."
```

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
What is the difference between integers and floats?
What is the difference between integer and float division?
What are strings? Why and when would you use them?
What are local variables? Why and when would you use them?
How was this challenge? Did you get a good review of some of the basics?

Most operators are technically method calls underneath the surface. Ruby interprets 4 + 4 as 4.+(4), and where + is called with the parameter 4, and returns the sum. On a surface level all the operators work more or less how you would expect them too, with the exception of division. If int A is divided by int B, / will return the number of times B will evenly go into A. If they are floats, / will return the expected decimal value.

Strings are just individual chars strung together. They are basically arrays of chars used for words. You would use strings when getting non-numerical textual info form a user, and to hold that data. You could use strings basically anywhere that you would assign a word or sentence to a variable or return a word sentence.

local variables are variables that are defined inside of a method. They cannot be called outside of the method. Their sad and short lives begin and end each time the method is called. You would use local variables for exactly this reason. Why clog up your programs memory when you can define a variable locally and recycle the memory when your done? By ruby convention, local variable names begin with a lower case letter or a and underscore.

I thought this was good challenge. A lot of this is a good refresher for me.
