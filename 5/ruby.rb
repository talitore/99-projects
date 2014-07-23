puts "Enter length of floor: "
length = gets.chomp.to_i
puts "Enter width of floor: "
width = gets.chomp.to_i
puts "Enter cost of tile per sqft: "
cost = gets.chomp.to_i

puts "Total cost: " + (length * width * cost).to_s