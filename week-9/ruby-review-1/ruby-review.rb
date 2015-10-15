# Cipher Challenge

# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # converts the coded_message string into a char array and stores it in input
#   decoded_sentence = []
#   cipher = {"e" => "a",   # A hash that keys a letter with a shift of 4 letters down
#             "f" => "b",
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # iterate through each char in the input array
#     found_match = false  # found match is set to false by defualt in case a match is not found
#     cipher.each_key do |y| # iterate through each key in the hash
#       if x == y  # compares x (an element of the input array), with y (a key in the  cipher hash)
#         decoded_sentence << cipher[y] # if x == y then the value in the cipher at y is push to the decoded sentance array
#         found_match = true
#         break  # break here to exit the loop because a match has been found
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # Checks for non alphanumeric input, and if it is, than a space is added to the decoded sentence.
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # converts the range 0..9 to an array of 0 through 9 and checks if x is included in the array, if it is, the number is added to the decoded sentence.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # If a match is not found, it pushes the original char from input to the decoded sentence
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") #convert the decoded sentance array into a string
#   #returns the decoded sentence implicitly
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message, shift)
  #allows the shift value to be selected from the alphabet array
  alphabet = ('a'..'z').to_a
  #serves as the initial position for the shift in tr method
  cipher_key = ((alphabet[shift]..'z').to_a + ('a'..alphabet[shift-1]).to_a + ['@','#','$','%','^','&','*'] + (0..9).to_a).join("")

  #serves as the coresponding value to be shifted to in the tr method
  cipher_value = (alphabet + [' ', ' ', ' ', ' ', ' ', ' ', ' '] + (0..9).to_a).join("")

  #tr shifts from the value at the index in cipher key, to the value in the same index in cipher value (a shift of 4).
  decoded_message = coded_message.tr(cipher_key, cipher_value)
  #implicitly return the decoded message
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!", 4) == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l", 4)
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.", 4)
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.", 4)
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?", 4)

# Reflection
=begin

What concepts did you review in this challenge?

Though this was a review challenge I actually learned some new
information. I learned about the .tr string method, which worked
perfectly for this application. I found it when I was trying to figure
out a better way to shift characters than a hash and I googled "how to
shift chars in ruby", and bam there it was. In terms of what I
reviewed, I reviewed adding and accessing values in an array, ranges,
implicit returns.

What is still confusing to you about Ruby?

I feel pretty good about ruby, but there are so many class methods its
a little overwhelming. Its hard for me to understand how some of them
work from the docs without actually using them. I had to experiment
with .tr in irb be before using it. I guess I am still confused about
some of the class methods and how they work.

What are you going to study to get more prepared for Phase 1?

I am going to study ruby class methods, and play with some interesting
ones in irb.

=end
# Keep your reflection limited to 10-15 minutes!