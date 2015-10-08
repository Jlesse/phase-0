# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
name is set to the string "betty sue" the method assert is called
  inside the insert method, the runtime enviroment is told to raise an error and print the "Assertion failed" unless the block inside the yeild returns true. I the first case, the reild block returns true, so no error is raised. In the second case, the yeild block returns false, so a runtime error occurs, "Assertion failed!" is printed to the screen as well as the line number of the raised error and the assert yeild block.
=end


# 3. Copy your selected challenge here
class Die


  def initialize(labels)
    if (labels.empty?)
      raise ArgumentError.new("Error: The die must have at least 1 side!")
    else
      @sides_array = labels
      @sides = @sides_array.length
    end
  end

  attr_reader :sides

  def roll
    @sides_array.sample
  end
end

my_die = Die.new(["a","b","c","d","e","f"])

puts my_die.roll


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

assert {Die.instance_method(:initialize).arity == 1}
assert{Die.instance_method(:sides).arity == 0}
assert{my_die != []}
assert{Die.instance_method(:sides).arity == 0}
assert{ length = 1 + rand(100)
        sides = Array.new(length) { 'A' }
        die = Die.new(sides)
        die.sides == length }
assert{Die.instance_method(:roll).arity == 0}
assert{ random_letter = ('A'..'Z').to_a[rand(26)]
        die = Die.new([random_letter])
        Array.new(100) { die.roll } == Array.new(100) { random_letter } }
assert{  possible_values = ('A'..'Z').to_a.shuffle.first(15)
         die = Die.new(possible_values)
         output = Array.new(10000) { die.roll }.uniq
         output.sort == possible_values.sort
}
# 5. Reflection
=begin
What concepts did you review or learn in this challenge?

I learned about assert statements and reviewed the use of yield. I learned how to create an assert method that raises an error unless a yield block evaluates to true. in this case the yield block are all at the bottom like drive code, but hypothetically they could exist throughout a program to test the code.

What is still confusing to you about Ruby?

I feel comfortable with the syntax and expressing my thoughts into code and using logic in ruby. I am still kind of confused about how ruby works with the web and how to write rspecs. I would like to know more about how ruby works on a lower level, and more about its features as programming language.

What are you going to study to get more prepared for Phase 1?

I am going to study more SQL and javascript, and look more into some of the things I still am not sure about with ruby. I feel pretty prepared, and I am really excited to begin the on site portion.

=end