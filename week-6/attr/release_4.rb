# Release 3:

class Profile
# here is the change, we combined the attr_writer and attr_reader into one declaration: attr_accessor
  attr_accessor :age
  attr_accessor :name
  attr_accessor :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

end