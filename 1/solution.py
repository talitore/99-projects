MY_PI = "3.14159265358979323846264338327950288419716939937510"

print("Find PI to the Nth Digit!")
print("Enter a number: (max 50)")
n = 0
stop = False
while not stop:
	n = int(input())
	if n > 0 and n < 51:
		break
	print("Must be a number between 0 and 51!")
	print("Enter a number: ")
print("PI to the {0} digit is...".format(n))
print(MY_PI[0:n+2])