# Your Names
# 1) Julian
# 2) Caroline

# We spent 1 hours on this challenge.
MENU = {"cookie" => 1, "cake" =>  5, "pie" => 7}

def print_output(args)
  if leftovers?(args[:order_quantity], args[:serving_size])
    return "Calculations complete: Make #{args[:order_quantity]/args[:serving_size]} of #{args[:item_to_make]}, you have #{args[:order_quantity] % args[:serving_size]} leftovers servings."
  else
    return "Calculations complete: Make #{args[:order_quantity]/args[:serving_size]} of #{args[:item_to_make]}"
  end
end

def leftovers?(order_quantity, serving_size)
   order_quantity % serving_size > 0
end

# Bakery Serving Size portion calculator.
#  item_to_make specifies which item in hash to make
#  order_quantity specifies how many serving sizes to make
def serving_size_calc(item_to_make, order_quantity)



  #If a match is not found print an inout error
  raise ArgumentError, "#{item_to_make} is not a valid input" unless MENU.key?(item_to_make)

  #assign the serving size of the menu item to serving size
  serving_size = MENU[item_to_make]
  #Check for leftovers
#   leftovers = order_quantity % serving_size


  print_output(order_quantity: order_quantity, serving_size: serving_size, item_to_make: item_to_make)

  #print the number to make, If there are leftovers, print that as well.


end











#driver code
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

  I practiced creating more readable variable names. I learned about
  using unless as single line statement instead of using negating
  conditionals. I made the code more readable by breaking the actions
  of the serving_size_calc method down in to into helper methods. I
  learned about using boolean methods for conditionals when possible.
  I learned a little about style, and to avoid using unnecessary
  parenthesis.

Did you learn any new methods? What did you learn about them?

  I didn't necessarily learn any new methods. I had used key? before.I
  learned about about passing a hash as argument into a method, and
  then extracting the keys, and using the values inside the method
  body. This is a neat trick, and apparently makes for more efficient
  and reusable code.

What did you learn about accessing data in hashes?

  Outside of what I mentioned earlier about passing a hash as an arg,
  I don't think I learned anything new.

What concepts were solidified when working through this challenge?

  I practiced reading and understanding code. I practiced using hashes
  and picking hash methods. I refactored a lot, and practiced writing
  utility methods and descriptive comments.


=end
