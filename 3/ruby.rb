puts "Find all prime factors of a number!"
puts "Enter a number: "
digit = 0
while true
  digit = gets.chomp.to_i
  break if digit > 0
  puts "Must be a number greater than 0!"
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