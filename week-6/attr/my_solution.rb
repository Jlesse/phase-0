#Attr Methods

# I worked on this challenge myself

# I spent 2 hours on this challenge.
#PSEUDOCODE
=begin
Create NameData class
  write an att_reader
  define initialize that takes a string, your_name, as a parameter.
    define and set instance variable name to your_name
  END method
END class

Create Greetings class
  define an initialize method
    define and assign name_data_obj to a new NameData object that is passed a name.
  define and set instance variable name to name_data_obj's name.
  END method

  define a hello method
    print out a string greeting method that includes the instance variable name
  end method.
END class.

=end

class NameData
  attr_reader :name
  def initialize your_name
    @name = your_name
  end

end


class Greetings
  def initialize
    name_data_obj = NameData.new("Julian")
    @name = name_data_obj.name
  end

  def hello
    puts "Hello #{@name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello

# Reflection
=begin

What is a reader method?

A reader method allows an instance variable's value to be seen from outside of the object or class.

What is a writer method?

A writer method allows an instance variable's value to be changed from outside of the object or class.

What do the attr methods do for you?

Attr methods set a key identical in name and value to the specified instance variable. They reduce the amount of code necessary to get and set instance variables. They allows easy access to get and set instance variables.

Should you always use an accessors to cover your bases? Why or Why not?

No. You might not want to allow an instance variable to be seen or changed from outside the class or object. You should only use attr methods (or any getter or setter) when you have an explicit reason to. Allowing access to an instance method that should not give access could lead to bugs or security issues.

What is confusing to you about these methods?
I don't think its very confusing at all. I guess I am kind of interested in how the keying works for the attr. I think it adds the instance variable name as a cymbal to the cymbal table. If this where the case, I would assume its also probaly a lot faster and more memory efficient than writing getter and setter methods.


=end