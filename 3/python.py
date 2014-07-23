print("Find all prime factors of a number!")
print("Enter a number: (max 5000)")
digit = 0
while True:
	digit = int(input())
	if digit > 0 and digit < 5001:
		break
	print("Must be a number between 0 and 5001!")
	print("Enter a number: ")

factors = []
for i in range(2,digit):
  while digit % i == 0:
    factors.append(i)
    digit = digit / i
    if digit == 1:
    	break
print(factors)