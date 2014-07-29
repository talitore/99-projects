puts "Enter loan amount: "
amount = gets.chomp.to_f
puts "Enter annual interest rate: "
interest = gets.chomp.to_f / (12 * 100)
puts "Enter loan length (months): "
length = gets.chomp.to_f

puts "Your monthly payment would be... "
puts "$%.2f" % (amount * (interest / (1 - (1+interest) ** -length))).to_s