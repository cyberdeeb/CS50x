def mario():
    # Gets a positive integer input from user
    while True:
        try:
            n = int(input("Height: "))
            if n > 0 and n < 9:
                break
        # Only allow integers
        except ValueError:
            print("That is not an integer!")

    # Builds blocks to height
    for i in range(n):
        for j in range(n):
            if i + j >= n - 1:
                print("#", end="")
            else:
                print(" ", end="")
        print()


mario()