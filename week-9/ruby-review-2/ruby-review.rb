# Your previous JavaScript content is preserved below:
#
# # OO Basics: Student
#
#
# # I worked on this challenge [by myself, with: ].
# # This challenge took me [#] hours.
#
#
# # Pseudocode
#
#
#
# # Initial Solution
#
# class Student
#   attr_accessor :scores, :first_name

#   def initialize(first_name, scores)   #Use named arguments!
#     @first_name = first_name
#     @scores = scores
#   end

#   def average()
#     solution=@scores.inject{|sum,index|sum+index}.to_f
#     return solution/@scores.size
#   end

#   def letter_grade()
#     case average()
#       when 90..100
#         return "A"
#       when 80..90
#        return "B"
#       when 70..80
#         return "C"
#       when 60..70
#        return "D"
#       else
#       return "F"
#      end
#   end

# end

# student1 = Student.new("Alex",[100,100,100,0,100])
# student2 = Student.new("John", [90,90,80,100,100])
# student3= Student.new("Ryan", [88,66,44,55,33])
# student4= Student.new("Julian", [60,70,80,90,100])
# student5= Student.new("Bob",[55,60,91,92,93])

# students = [student1,student2,student3,student4,student5]

# def linear_search(students, first_name)
#   students.each_with_index do |student, index|
#       if student.first_name == first_name
#         return index
#       end
#     end
#     return -1
# end

# students.sort! {|a, b| a.first_name <=> b.first_name}
#   def binary_search(students, first_name, min, max)

#     if max < min
#       return -1
#     else
#           mid = (min + max)/2
#       if students[mid].first_name > first_name
#             return binary_search(students, first_name, min, mid -1)
#       elsif students[mid].first_name < first_name
#             return binary_search(students, first_name, mid +1, max)
#       else
#             return mid
#       end
#     end
# end

# puts students[binary_search(students, "Ryan", 0, students.length-1)].first_name

#
# # Refactored Solution

class Student
  attr_accessor :scores, :first_name, :grade_hash

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
    @grade_hash = {
      90..100 , "A",
      80..90 , "B",
      70..80 , "C",
      60..70 , "D",
      0..60 , "E",
      }
  end


  def average()
    solution=@scores.inject{|sum,index|sum+index}.to_f
    return solution/@scores.size
  end

  def letter_grade()
    @grade_hash.select{|grade| grade === average()}.values.first
  end

end

student1 = Student.new("Alex",[100,100,100,0,100])
student2 = Student.new("John", [90,90,80,100,100])
student3= Student.new("Ryan", [88,66,44,55,33])
student4= Student.new("Julian", [60,70,80,90,100])
student5= Student.new("Bob",[55,60,91,92,93])

students = [student1,student2,student3,student4,student5]

def linear_search(students, first_name)
  students.each_with_index do |student, index|
      if student.first_name == first_name
        return index
      end
    end
    return -1
end

students.sort! {|a, b| a.first_name <=> b.first_name}
  def binary_search(students, first_name, min, max)

    if max < min
      return -1
    else
          mid = (min + max)/2
      if students[mid].first_name > first_name
            return binary_search(students, first_name, min, mid -1)
      elsif students[mid].first_name < first_name
            return binary_search(students, first_name, mid +1, max)
      else
            return mid
      end
    end
end

# puts students[binary_search(students, "Ryan", 0, students.length-1)].first_name


# # DRIVER TESTS GO BELOW THIS LINE
# # Initial Tests:

# p students[0].first_name == "Alex"
# p students[0].scores.length == 5
# p students[0].scores[0] == students[0].scores[4]
# p students[0].scores[3] == 0

# #
# # # Additional Tests 1:
# #
p students[0].average == 80
p students[0].letter_grade == 'B'

# # Additional Tests 2:

# p linear_search(students, "Alex") == 0
# p linear_search(students, "NOT A STUDENT") == -1

#
#
#
#
# # Reflection
=begin

What concepts did you review in this challenge?

I review creating classes and objects in ruby, accessing and modifying
arrays, and search algorithms.

What is still confusing to you about Ruby?

I am still a little bit confused about how ruby interacts with the
web. Is it purely a server side language? Is it cached locally on the
client side? Does it modify the DOM? I think ruby is pretty straight
forward for the most part, and I am not consciously aware of any
confusion I have about anything learned so far.

What are you going to study to get more prepared for Phase 1?

I need to study SQL logic more. I am little confused about the
different types of relationships, and how to spot and make use of them
I feel comfortable with ruby and JavaScript, but I need to practice
and remember the syntax. At this point, I know what I want to do and
express, but I get a little caught up on confusing JavaScript and ruby
syntax.

=end