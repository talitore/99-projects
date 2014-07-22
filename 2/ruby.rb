puts "Find Fibonacci's number to the Nth Digit!"
puts "Enter a number: (max 50)"
digit = 0
stop = false
while !stop
	digit = gets.chomp.to_i
	break if digit.between?(1,50)
	puts "Must be a number between 0 and 51!"
	puts "Enter a number: "
end

all_nums = [0]
num = 0

digit.times do |i|
	if all_nums.count == 1
		num = 0
		all_nums << 1
	else
		num = all_nums.last + all_nums[all_nums.length - 2]
		all_nums << num
	end
end
puts num
puts all_nums.join(', ')