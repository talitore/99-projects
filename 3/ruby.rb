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
factors << 1
(2..digit/2).each do |i|
  puts "looping #{digit}"
  (2..digit/2).each do |i2|
    if digit % i2 == 0
      factors << i2 if !factors.include? i2
      digit = digit / i2
      next
    end
  end
end

puts factors.to_s