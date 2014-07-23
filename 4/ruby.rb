puts "Press enter to start finding prime numbers! Spacebar or Enter to stop. (Unix only)"
gets

def find_next_prime num
	num +=1
	while true
		prime = true
		for i in 2..num-1
			prime = false if num % i == 0
			break if !prime
		end
		return num if prime
		num +=1
	end
end

num = 1

loop do
  system("stty raw -echo")
  char = STDIN.read_nonblock(1) rescue nil
  system("stty -raw echo")
  break if /\s/ =~ char
  num = find_next_prime num
  puts num
end