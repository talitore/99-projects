puts "Enter length of floor: "
length = gets.chomp.to_f
puts "Enter width of floor: "
width = gets.chomp.to_f
puts "Enter cost of tile per sqft: "
cost = gets.chomp.to_f

total = "$%.2f" % (length * width * cost)
puts "Total cost: " + total.to_s