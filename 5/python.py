length = float(input("Enter length of floor: "))
width = float(input("Enter width of floor: "))
cost = float(input("Enter cost of tile per sqft: "))

print("Total cost: " + '$%.2f' % (length * width * cost))