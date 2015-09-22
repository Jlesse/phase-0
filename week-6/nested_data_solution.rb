# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
# number_array.map! do |element|
#   if element.kind_of?(Array)
#     element.map! { |inner| inner += 5 }
#   else
#     element += 5
#   end
# end
# puts number_array

def addition(number_array)
  number_array.map! do |element|
    if element.kind_of?(Array)
      addition(element)
    else
      element += 5
    end
  end
end

puts addition(number_array)

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.each do |element|
#   if element.kind_of?(Array)
#     element.each do  |inner|
#       puts "#{inner}ly"
#     end
#   else
#     puts "#{element}ly"
#   end
# end
# end

def name_generator(startup_names)
  startup_names.each do |element|
    if element.kind_of?(Array)
      name_generator(element)
    else
      puts "#{element}ly"
    end
  end
end



name_generator(startup_names)

#REFLECTION
=begin
What are some general rules you can apply to nested
arrays?

The number of bracket pairs indicates the depth of the nesting.Puts
will print out each element in all arrays including the nested onces,
p will not.

What are some ways you can iterate over nested arrays?

You can itererate of nested arrays using .each or .map, and each time
you access an element, check if its an array, and if it is go inside
and accesss all of its elements and check, and print if not an array.
I think this logic is best implemented using recursion.

Did you find any good new methods to implement or did you re-use one
you were already familiar with? What was it and why did you decide
that was a good option?

We used Map! becuase it destructively aplies the statment in the block
to each element. I had used map before, but not the destructive
version. We decided to use recursion in the refactored solution
because it allows us to elegantly check if each element is an array
and then enter the nested structure if it is.

=end