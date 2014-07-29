while True:
	try:
	   amount = float(input("Enter loan amount: "))
	   interest = float(input("Enter annual interest rate: "))
	   length = float(input("Enter loan length (months): "))
	except ValueError:
	   print("Numbers only!")
	else:
		break

interest = interest / (12 * 100)

print("Your monthly payment would be... ")
print("$%.2f" % (amount * (interest / (1 - (1+interest) ** -length))))