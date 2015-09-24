# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 7 hours on this challenge.


# Release 0: Pseudocode
# Outline:

#create an instance variable named letter
#create an instance variable name number
#create a hash named bingo_hash linking each letter in bingo with its corresponding index in the array, b = 0, i = 1, n = 2, etc...

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #set letter equal to a randomly selected key from bingo_hash.
  #set row equal to a randomly selected number between 1-100 inclusive.
#END method

# Check the called column for the number called.
#Create method named check
  # find the array located at the array index that corresponds to the value from passing the letter into the bingo hash.
  #create local variable named counter and set to 0
  # search the found array for number
  # increment row 1 for each index pased
  # IF the the number is found
    #set instance variable row = counter.
    #return true
  # ELSE
    #return false
#END method.


# If the number is in the column, replace with an 'x'
# Create method mark_x
  #IF check == true
    #replace the element found at board[bingo_hash[letter]][row] with 'x'
  #ELSE
    #puts "no point 4 u!"
#END method

# Display a column to the console
# Create method disp_col that take 1 int parameter called col
  #print out each element in board[col] with a newline after each.
# END method

# Display the board to the console (prettily)
# Create a method disp_board
    # For each element in the board
      #disp_col the array at that index.
# END method.

# Initial Solution

# class BingoBoard



#   def initialize(board)
#     @bingo_board = board
#     @bingo_hash = {'b' => 0, 'i' => 1, 'n' => 2, 'g' => 3, 'o' => 4}
#     @letter
#     @number
#     @row
#   end

# def gen_board
#     array = [[],[],[],[],[],]
#     val = Random.new()
#     range_type = 1
#     while range_type <= 5
#       case range_type
#         when 1
#           range = 1..15
#         when 2
#           range = 16..30
#         when 3
#           range = 31..45
#         when 4
#           range = 46..60
#         when 5
#           range = 61..75
#       end
#       array.each do |sub_array|
#         sub_array.push(val(range))
#       end
#       range_type += 1
#     end
#     array[3].insert(3, 'X')
#     return array
# end


#   def gen_let_num
#     @letter = @bingo_hash.keys.sample
#     @number = Random.new()
#     @number = @number.rand(1..100)
#   end

#   def check
#     counter = 0
#     @bingo_board.each do |sub_array|
#       if sub_array[@bingo_hash[@letter]] == @number
#         @row = counter
#         return true
#       else
#         counter += 1
#       end
#     end
#     return false
#   end

#   def call
#     puts "The position is #{@letter}#{@number}"
#   end

#   def mark_x
#     if check == true
#       @bingo_board[@row][@bingo_hash[@letter]] = 'X'
#     else
#       puts "no point found"
#     end
#   end

#   def disp_row(row)
#     p @bingo_board[row]
#   end

#   def display_board
#     @bingo_board.each_index do |i|
#       disp_row(i)
#     end
#   end
# end



# Refactored Solution

class BingoBoard

attr_reader :letter
attr_reader :number

  def initialize()
    @bingo_board
    @bingo_hash = {'b' => 0, 'i' => 1, 'n' => 2, 'g' => 3, 'o' => 4}
    @letter
    @number
    @row
  end

  def gen_board
    range_hash = {1 => 1..15, 2 => 16..30,
                  3 => 31..45, 4 => 46..60, 5 => 61..75  }
    array = [[],[],[],[],[],]
    val = Random.new()
    range_type = 1
    while range_type <= 5
      array.each do |sub_array|
        sub_array.push(val.rand(range_hash[range_type]))
      end
      range_type += 1
    end
    array[2][2] = 'X'
    @bingo_board = array
end


  def gen_let_num
    @letter = @bingo_hash.keys.sample
    @number = Random.new()
    @number = number.rand(1..100)
  end

  def check?
    @bingo_board.each_with_index do |sub_array, index|
      if sub_array[@bingo_hash[@letter]] == @number
        @row = index
        return true
      end
    end
    return false
  end

  def call
    puts "The position is #{@letter}#{@number}"
  end

  def mark_x
    if check?
      @bingo_board[@row][@bingo_hash[@letter]] = 'X'
    else
      puts "no point found"
    end
  end

  def disp_row(row)
    p @bingo_board[row]
  end

  def display_board
    @bingo_board.each_index do |i|
      disp_row(i)
  end
  end
end







#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new()

new_game.gen_board
new_game.gen_let_num
new_game.call
new_game.display_board
new_game.mark_x
puts
new_game.display_board



#Reflection
=begin
How difficult was pseudocoding this challenge? What
do you think of your pseudocoding style?

Pseudocoding this challenge was pretty difficult for me. Not because
the logic was too complicated, but because it was difficult for me to
translate my solution into words. I think I need to read more about
pseudocoding and work on improving my style. I do however think that I
met expectations with my pseudocode because I indented for new lines,
I did not use any language specific words or built in method names,
and I tried my best to break up the logic into small steps.

What are the benefits of using a class for this challenge?

Using a class for this challenge allows us to create an object that
holds state and possess methods. We can change and print out the
variables using methods that the object possess. Object oriented
allows us to make a better model of the how things would function in
the real world. In this specific case, using a class to create an
object allowed me to store instance variables such as bingo_board,
bingo_hash, letter, number, and row, which I used throughout the
methods in the class. Writing methods in the class was helpful because
it allowed me to create a unique object that held the instance
variable values, then I could call the methods from the object, and
the methods would know exactly which variables I was referring to.

How can you access coordinates in a nested array?

You can access coordinate in a 2d nested array as though you were
referring to the row and column. obviously this becomes more difficult
If the array is more deeply nested. It is hard for humans to visual
conceptualize beyond 3d dimensions, though an array can be near
infinitely deeply nested. For a 2d array accessing an element is simple.
Imagine each element in an array like so:

array = [[a,b,c],[d,e,f],[g,h,i]]

Imagine each element in the outer array is a column and each element
in the inner corresponds to a row. To access an element, first specify
the outer array index(column), and the inner array index(row). To
access f you would say: array[1][2] (remember that arrays are indexed
from 0)

What methods did you use to access and modify the array?

I used .push to push values into the array to generate my board. I
used .each quite a lot, and used .each_with_index in my refactored
solution. I used the typical way referring to indices when I wanted to
reference or change an element, like array[column][row]. I used
each_index when printing out the board.

How did you determine what should be an instance variable versus a
local variable?

I considered a few things: Can I create this variable inside a method and return
and pass it into another method (make a method call as a parameter or
make a method call inside another method)? Is it used in any other
methods? Does it hold some important information about the state of
the object, which needs to be referenced or changed in the future? If
the answer is no to the first, and yes to the latter 2, then I made
the variable an instance method. I probably could have done more to
pass methods or call methods inside of other methods to return the
necessary variable, but this can make a program a little difficult to
read if its overdone.

What do you feel is most improved in your refactored solution?

I think I improved the readability and efficiency of the program a little
bit. I used a hash inside of the gen_board method instead of
going through an entire switch every time the loop executed. I got
rid of the counter that used to keep track of the index inside of the
check? method and instead used the the each_with_index enum method to
keep track of the index. I changed the check method to be a boolean
method (even though it technically already was) by adding the ? at the
end. Inside the mark_x method when check called, I used if check?
instead of if check == true.

=end
