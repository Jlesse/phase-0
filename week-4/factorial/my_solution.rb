# Factorial

# I worked on this challenge with: Pamela Antonow


def factorial(number)
  total = 1
  until number <= 1
  total *= number
  number -= 1
  end
  return total
end

# define factorial
# inside method set total = 1
# go through the loop until the number is 1
# total = total*number
# decrement number
# end until
# return total