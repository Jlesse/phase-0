=begin
PSEUDOCODE
===========
CREATE A NEW LIST
  create method named new_list that takes no parameters
    inside the method body create and return a new empty hash
    return the hash
  end the method

ADD AN ITEM WITH A QUANTITY TO THE LIST
  create a method named add to list that takes one string parameter named item, one integer parameter name quant, and one hash paramter name list.
    inside the method body push the item as the key and the quantity as the value into the list. return the list.
  end the method.

REMOVE AN ELEMENT FROM THE LIST
  create method named remove that takes one parameter named item.
    create a variable called temp_hash
    inside the method body, search for the key that matches the item.
    IF the item is found in the list
      delete it
    ELSE
      print "item not found in list"
    RETURN temp_hash
  end the method

UPDATE A QUANTITY
  create a method named update_quant that takes a string parameter named item, and an int parameter named quant.
    inside the method body, find the key that matches the item parameter.
      IF the paramter is found
        assign quant to as the new value paired with the key in the hash.
      ELSE
        print "item not found!"
  end method

PRINT THE LIST
  create method name print list that takes hash parameter named list
    inside the the method body print onto one line:
    "ITEM: item     QUANTITY: quanity"
    go through each key value pair in the hash and print out the key and the value followed by a new line until the there are no more pairs left.
  end the method.

=end

def new_list
  return Hash.new("error: key not found")
end

def add_to_list(item, quant, hash_list)
  if(hash_list.key?(item))
    puts "#{item} already in hash!"
  else
  hash_list[item] = quant
  end
  return hash_list
end


def remove(item, hash_list)
  if(hash_list.key?(item))
    hash_list.delete(item)
  else
    puts "#{item} not in hash!"
  end
  return hash_list
end


def update_quant(item, quant, hash_list)
  if(hash_list.key?(item) == false)
    puts "#{item} not in hash!"
  else
    hash_list[item] = quant
  end
  return hash_list
end

def print_list(hash_list)
  hash_list.each{|key, value|
    puts "ITEM: #{key}   QUANTITY: #{value}"
  }
end

#DRIVER CODE
list = new_list
add_to_list("Lemonade", 2, list)
add_to_list("Lemonade", 3, list)
add_to_list("Tomatoes", 3, list)
add_to_list("Onions", 1, list)
add_to_list("Ice Cream", 4, list)
print_list(list)
puts ""
remove("thing", list)
remove("Lemonade", list)
print_list(list)
puts ""
update_quant("Ice Cream", 1, list)
update_quant("blob", 1000, list)
print_list(list)

=begin REFLECTION ############# What did you learn about pseudocode
from working on this challenge? What are the tradeoffs of using Arrays
and Hashes for this challenge? What does a method return? What kind of
things can you pass into methods as arguments? How can you pass
information between methods? What concepts were solidified in this
challenge, and what concepts are still confusing?

I am not sure that I learned anything new about pseuocoding from this
challenge. Unfortunately I accidentally missed the pairing session so
I had to do it on my own. I am sure I would have learned a lot more if
I had made it to the pairing session.

I don't think that arrays would be very good for this challenge unless
you had an array of objects that held both the quantity and the item.
It is more efficient to access elements in an array, which might be
useful you are rapidly accessing and elements, but for this
application its not important to consider. If sorted order were highly
important, i think an array of objects would be required. Arrays are
keyed by index, and so it is hard when you want to correlate and pair
based on a programmer defined key. I think a hash is a much better
choice for this kind of application because it allows us to make each
key a grocery item, and the value the quantity.

A method implicitly returns the last evaluated expression before the
the method ended, or explicitly returns the statement after the
keyword return. I think explicit returns are better because they are
more clear to other people reading your code and less prone to
unexpected behavior. Puts and print both output to the console, and
they both return nil.p will both output and return the value.

You can pass any object to a method, whether its a string, a new
object, an integer, etc. You can pass a method into another method, as
long as that method returns something that will fill the requirements
for that argument within the method body.

Methods can communicate with each by passing one method into another
method or using an instance variable to hold the state.

I solidified my understanding of methods and hashes in ruby. I think
I've got a decent handle on it. I am still a little confused about all
the enum methods, and how and when to best use them. There are a lot,
so it can be a little overwhelming. =end
