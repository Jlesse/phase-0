# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

#works
def count_between(list_of_integers, lower_bound, upper_bound)
  count = 0
  list_of_integers.each do | num|
    if (num >= lower_bound) && (num <= upper_bound)
      count += 1
    end
    if num > upper_bound
      break
    end
  end
  return count
end

######this one is broken as shiz but I wanted to keep it here to look at later
# def count_between(list_of_integers, lower_bound, upper_bound)
#   if (list_of_integers.empty?)
#     return 0
#   end
#   i = 0
#   until lower_bound <= list_of_integers[i]  || (i+1 == list_of_integers.length)
#     i+=1
#   end
#   count = 0
#   until (upper_bound <= list_of_integers[i]) || (i+1 == list_of_integers.length)
#     count+=1
#     i+=1
#   end
#   return count
# end