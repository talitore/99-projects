print("Find Fibonacci's number to the Nth Digit!")
print("Enter a number: (max 50)")
digit = 0
stop = False
while not stop:
	digit = int(input())
	if digit > 0 and digit < 51:
		break
	print("Must be a number between 0 and 51!")
	print("Enter a number: ")

all_nums = [0]
num = 0

for i in range(0, digit):
	if len(all_nums) == 1:
		num = 0
		all_nums.append(1)
	else:
		num = all_nums[-1] + all_nums[- 2]
		all_nums.append(num)
print(num)
print(all_nums)