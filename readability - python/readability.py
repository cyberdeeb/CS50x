letter_count = 0
word_count = 1
sentence_count = 0

# Text input from user
txt = input("Text: ")
txt_len = len(txt)

# Loop to calculate the various counts
for i in range(txt_len):
    if txt[i].isalpha():
        letter_count += 1

    if txt[i].isspace():
        word_count += 1

    if txt[i] == "." or txt[i] == "?" or txt[i] == "!":
        sentence_count += 1

# Coleman-Liau index calculation
grade = round((0.0588 * letter_count / word_count * 100) - (0.296 * sentence_count / word_count * 100) - 15.8)

# Find the grade
if grade < 1:
    print("Before Grade 1")
elif grade >= 16:
    print("Grade 16+")
else:
    print(f"Grade: {grade}")

