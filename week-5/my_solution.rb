## Calculate the mode Pairing Challenge

# I worked on this challenge [with Julian ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



#array.max_by { |i| array.count(i)>1 }



# 0. Pseudocode

# What is the input?

  #an array [1,2,2,3]

# What is the output? (i.e. What should the code return?)

  #an array with the mode [2]

# What are the steps needed to solve the problem?

  #define a method named mode that takes an array
  #def mode(array)
  #create a local hash variable called frequency
  #create cur_max and set it equal to 1
  #use array.each {} to go through each index
    #add the current index and number occurances to hash
  #IF the count > cur_max
    #cur_max = count
  #create an array that equals all values that match the key of cur_max
  #RETURN the element(s) that occur the most


#adding to a hash
#hash = {:item1 => 1}
#hash[:item2] = 2


# 1. Initial Solution
=begin
def mode(array)
  freq = Hash.new()
  cur_max = 1
  array.each {|i|
    count = array.count(i)
    freq[i] = count
    if (count > cur_max)
      cur_max = count
    end
  }
  mode_array = Array.new
  freq.each_pair{|key, value|
    if value == cur_max
      mode_array.push(key)
    end
    }
  return mode_array
end
=end


# 3. Refactored Solution
def mode(array)
  freq = Hash.new()
  array.each {|i|
    count = array.count(i)
    freq[i] = count
  }
  mode_array = Array.new
  max = freq.values.max
  freq.select {|k, v| v == max}.each_key{|k|mode_array.push(k)}
  return mode_array
end

test = [1,1,1,1,2,2,3,3,3,3]
puts mode(test)



# 4. Reflection
=begin
Which data structure did you and your pair
decide to implement and why? Were you more successful breaking this
problem down into implementable pseudocode than the last with a pair?
What issues/successes did you run into when translating your
pseudocode to code? What methods did you use to iterate through the
content? Did you find any good ones when you were refactoring? Were
they difficult to implement?

We decided to use a hash because this was a pretty clear case of
matching a key pair value. We used each number as a key, and the
number of occurrences of that number in the array as the paired value.

I was about as successful breaking down the problem with my pair as in
the last challenge. I thought this one was maybe a little more
difficult.

When translating our pseudocode into code, we had a little difficulty
figuring exactly how we wanted to implement some of the vague
language. As we were writing the code we went back and changed the
psuedocode in some spots. I think was good though, because we realized
what we were lacking, and we were able to change the language and
logic to implement it.

We used .each to iterate through the array. Inside the .each block we
stored the value returned by array.count with that array element as
the value in the hash, paired with the element as the key. For
iterating through the hash, we used .each_pair and if the value
matched the cur_max, we pushed it into the mode_array.

When we refactored we were able to get rid of the cur_max, and instead
used max = freq.values.max, to get the max value out of the hash. We
used .select to return a hash with the values that matched max, and
then used .each_key to and pushed the keys into and an array and
returned that array. I don't think the new methods were to difficult
to implement, it just required reading the documentation. I am not
necessarily sure if the refactored solution is more readable. It is
less lines of code which is good, I also think it would probably run
more efficiently.

=end