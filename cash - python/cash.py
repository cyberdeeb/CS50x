# Prompts user to input a positive float
while True:
    try:
        dollars = float(input("Change Owed: "))
        if dollars >= 0:
            break

    # Only allow integers
    except ValueError:
        print("That is not an integer!")

# Initializes coins
cents = round(dollars * 100)
coins = 0

# Coin calculations
while cents >= 25:
    cents -= 25
    coins += 1

while cents >= 10:
    cents -= 10
    coins += 1

while cents >= 5:
    cents -= 5
    coins += 1

while cents >= 1:
    cents -= 1
    coins += 1

print(coins)
