puts "Find all prime factors of a number!"
puts "Enter a number: (max 5000)"
digit = 0
while true
  digit = gets.chomp.to_i
  break if digit.between?(1,5000)
  puts "Must be a number between 0 and 5001!"
  puts "Enter a number: "
end

factors = []
for i in 2..digit
  while digit % i == 0
    factors << i
    digit = digit / i
    break if digit == 1
  end
end

puts factors.to_s