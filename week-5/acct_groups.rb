#pseudocode
#===========
#create an container with everyones names called cohort
#create an empty container named groups
#define a method named assign_groups
#define and set a variable called cohort_size to the size of the cohort array
#create varible num_of_teams
#check if an even group can be created with a group of 4, or 5.
  #IF 5 divides evenly into cohort_size
    #set num_of_teams to cohort_size/5
  #ELSE IF 4 divides evenly into cohort_size
    #set num_of_teams to cohort_size/4
  #ELSE IF the remainder of cohort_size/5 > the remainder of cohort_size/4
    #set num_of_teams to (cohort_size/5)+1
  #ELSE
    #set num_of_teams to (cohort_size/4)+1
#assign each name to a group and put in groups container
  #create and set group_pointer equal to 1
  #Iterate through each index in the array
    #at each index store the name and pointer value in the groups container
    #IF the group_pointer equals num_of_teams
      # set group_pointer to 0
    #ELSE
      # increment group pointer
  #END loop
#end method

#instance variables
@cohort = ["Shunqian Luo (Nathan)", "Kim Allen","Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi","Un Choi", "Kristie Chow", "Regina Compton", "Marcus Davis", "Paul Etscheit", "Solomon Fernandez", "Marcel Galang", "Aurelio Garcia", "Hector Jair Moreno Gomez", "Ricky Binhai Hu", "Kai Huang", "Alex Jamar", "Harmin Jeong", "Lauren Jin", "CJ Joulain", "Michael Landon", "Richard Leo", "Julian Lesse", "Ryan Lesson", "Ian Lockwood", "Christopher Mark", "Lauren Markzon", "Miguel Angel Melendez", "David O'Keefe", "Nathan Park", "Landey Patton", "Farman Pirzada", "Samuel Frederick Purcell", "Salim Rahimi", "Colin Razevich", "Irina Renteria", "Jamie Runyan", "Eric Shou", "Michael Silberstein", "Rosslyn Sinclair-Chin", "Aji Slater", "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku", "Nicholas Yee"]
@groups = Hash.new("name not found")
@num_of_teams

# INITIAL METHOD
# def assign_groups
#   cohort_size = @cohort.size
#   if (cohort_size%5 == 0)
#     @num_of_teams = cohort_size/5
#   elsif (cohort_size%4 == 0)
#     @num_of_teams = cohort_size/4
#   elsif (cohort_size%5 > cohort_size%4)
#     @num_of_teams = (cohort_size/5)+1
#   else
#     @num_of_teams = (cohort_size/4)+1
#   end
#   group_pointer = 1
#   i = 0
#   until(@cohort[i] == nil)
#     @groups[@cohort[i]] = group_pointer
#     if (group_pointer == @num_of_teams)
#       group_pointer = 1
#     else
#       group_pointer +=1
#     end
#     i+=1
#   end
# end

# REFACTORED METHOD
def assign_groups
  cohort_size = @cohort.size
  if (cohort_size%5 == 0)
    @num_of_teams = cohort_size/5
  elsif (cohort_size%4 == 0)
    @num_of_teams = cohort_size/4
  elsif (cohort_size%5 > cohort_size%4)
    @num_of_teams = (cohort_size/5)+1
  else
    @num_of_teams = (cohort_size/4)+1
  end
  group_pointer = 1
  @cohort.shuffle!
  @cohort.each {|person|
    @groups[person] = group_pointer
    if (group_pointer == @num_of_teams)
      group_pointer = 1
    else
      group_pointer +=1
    end
  }
end

#prints names and groups to clarify accuracy
def print_groups
  i = 1
  until(i > @num_of_teams)
      @groups.each_pair { |name, val|
      if (val == i)
        puts "#{name} is in group #{i}"
      end
    }
    i += 1
  end
end

#deletes a name from the hash
def remove_from_hash(name)
  @groups.delete_if{|key, group| key == name}
end

#deletes a name from the array
def remove_from_array(name)
  @cohort.delete(name)
end

#driver code
remove_from_array("Aurelio Garcia")
remove_from_array("Hector Jair Moreno Gomez")
remove_from_array("Alex Jamar")
remove_from_array("Landey Patton")
remove_from_array("Michael Silberstein")
assign_groups
print_groups


#             REFLECION ######################################## #
# What was the most interesting and most difficult part of this
# challenge? Do you feel you are improving in your ability to write
# pseudocode and break the problem down? Was your approach for
# automating this task a good solution? What could have made it even
# better? What data structure did you decide to store the
# accountability groups in and why? What did you learn in the process
# of refactoring your initial solution? Did you learn any new Ruby
# methods?

# The most interesting and most difficult part of the challenge was writing
# the pseudocode. It was kind of difficult coming up with the logic for
# arranging the groups. I am pretty satisfied with the pseudocode I wrote and
# the logic I used. I think I am definitely improving at pseudocode and
# breaking the problem down. I didn't have any logic errors, and after fixing
# a couple sloppy syntax issues, everything ran great. I think my approach was
# a good solution. I am not really sure what could've made it better. I am
# sure there may be a way to write the code cleaner, but I think I did pretty
# well. I stored the accountability groups in a hash because (fortunately)
# each name was unique and made for a good key. The value paired with each
# name key was just their group number. In the process of refactoring my
# solution I didn't learn any new ruby methods. But I changed my variables my
# class variables from global to instance, and I learned about variable scope
# in ruby. I also used the .each enumerable instead of until to iterate
# through all the names in the array. In the refactored solution I shuffled
# the array so the groups would be different each time.
