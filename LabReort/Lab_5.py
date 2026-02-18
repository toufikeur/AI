# -----------------------------------------
# Program: Reverse a Given Number
# -----------------------------------------

def reverse_number(num):
    reverse = 0
    is_negative = False

    # Check if number is negative
    if num < 0:
        is_negative = True
        num = abs(num)

    # Reverse the number
    while num > 0:
        digit = num % 10
        reverse = reverse * 10 + digit
        num = num // 10

    # Restore negative sign if needed
    if is_negative:
        reverse = -reverse

    return reverse


# Main Program
num = int(input("Enter a number: "))
result = reverse_number(num)

print("Reversed number:", result)
