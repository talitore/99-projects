MY_PI = "3.14159265358979323846264338327950288419716939937510"

puts "Find PI to the Nth Digit!"
puts "Enter a number: (max 50)"
n = 0
stop = false
while !stop
	n = gets.chomp.to_i
	break if n.between?(1,50)
	puts "Must be a number between 0 and 51!"
	puts "Enter a number: "
end
puts "PI to the #{n} digit is..."
puts MY_PI[0..n+1]