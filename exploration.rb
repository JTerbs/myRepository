filename = ARGV.first

puts "This is my first ruby program"

puts "Here is some simple arithmetic"

puts "5 plus 3 is..."
puts 5+3
puts "5 times 3 is..."
puts 5*3
puts "5 to the power of 3 is..."
puts 5**3
puts "square root of 25 is..."
puts Math.sqrt(25)

puts "Here is some arithmetic using variables"
puts "a = 5 and b = 3"
puts a = 5
puts b = 3
puts "adding now.."
puts a+b
puts "multiplying now.."
puts a*b
puts "a to the b power.."
puts a**b
puts "easy enough"

puts "Lets run a method now"

def my_method
	puts "I guess this is a method?"
end

puts my_method

puts "lets do something a bit more complex"

class NameManipulator
	attr_accessor :names
	
	#create the object
	def initialize(names = "Shaquiqua")
		@names = names 
	end
	
	#method
	def reverse_name
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "#{name}"
				puts "#{name}".reverse
			end
		else
			puts "#{@names}"
			puts "#{@names}".reverse
		end
	end

	def multiply_name
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			@names.each do |name|
				puts "#{name}"*2
			end
		else
			puts "#{@names}"*2
		end
	end
end

if __FILE__ == $0
  nm = NameManipulator.new
  nm.reverse_name
  puts "\n"
  nm.multiply_name
  puts "\n"

  # Change name to be "Dominique"
  nm.names = "Dominique"
  nm.reverse_name
  puts "\n"
  nm.multiply_name
  puts "\n"

  # Change the name to an array of names
  nm.names = ["Jose", "Raquel", "Pierre",
    "Ratliffe", "Tyrone", "Bob"]
  nm.reverse_name
  puts "\n"
  nm.multiply_name
  puts "\n"

  # Change to nil
  nm.names = nil
  nm.reverse_name
  puts "\n"
  nm.multiply_name
  puts "\n"
end