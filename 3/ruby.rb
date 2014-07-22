puts "Find Fibonacci's number to the Nth Digit!"
puts "Enter a number: (max 50)"
digit = 0
while true
  digit = gets.chomp.to_i
  break if digit.between?(1,50)
  puts "Must be a number between 0 and 51!"
  puts "Enter a number: "
end