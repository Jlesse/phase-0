puts "What's yo name gurl?"
fName = gets.chomp
puts "Thatz a kool name. Whats yo middle name?"
mName = gets.chomp
puts "Thatz really kool 2. Whats yo last name?"
lName = gets.chomp

puts "#{fName} #{mName} #{lName} is a really funky fresh name."

puts "Now let me get them digits, and by digits, I mean yo favorite number."
num=gets.chomp.to_i
num=num+1

puts "Thatz a kool number, but I think #{num} is better cuz its a bigger number."

=begin

How do you define a local variable? How do you define a method? What
is the difference between a local variable and a method? How do you
run a ruby program from the command line? How do you run an RSpec file
from the command line? What was confusing about this material? What
made sense?

A local variable is defined inside of a method. You can define a local
variable as you would normally, but it should begin with a lower case
letter or underscore. Local variables are not given a default value,
and should be used carefully.

A method definition in ruby begins with the keyword def, followed by
the method name, followed by the parameters (if any), followed by the
actual code block, then a return statement (if no return is specified,
ruby will return the last result of the last executed expression as an
implicit return), followed by the keyword end. Wow, that was awkwardly
phrased. A better explanation might just be an example. A method
should look something like this.

def aMethod (param1, param2)   result = param1 + param2   return
result; end

This method could be written a litter cleaner but I wanted to include
a return statement and a local variable just to demonstrate what a
method may contain.

Local variables and methods are related, but not at all the same
thing. You can think of a method like a verb; its an action, it does
something. Variables a more like nouns, they a place holder for a
person place or thing. A local variable is a specific type of variable
that lives inside of a method. It must declared inside the method
body, and cannot be used outside of the method. It lives its short but
sweet life in entirely within the action of the method.

To run a ruby program from the command line, just type in the
terminal: ruby project-name.rb while in the same directory as the
project.

To run an Rspec file from the command line just navigate to folder its
in and type: rspec test-name.rb.

I didn't think the material was very confusing. This is mostly a
refresher for so I found myself looking up syntax a lot, but the
concepts are all there.

=end