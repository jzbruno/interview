# Write the code for the following function to main the tests pass.
# Do not change the function signature.
#
# The sum_it function returns an integer that is the sum of the
# integers between the given parameters a and b. For example:
#
# - If 3 and 5 are passed in the result should be 12 because 3 + 4 + 5 = 12.
# - If 4 and 7 are passed in the result should be 22 because 4 + 5 + 6 + 7) = 22.
#
def sum_it(a, b):
    pass


if __name__ == '__main__':
    ans = sum_it(3, 5)
    assert ans == 12, f'Expected answer to be 12 but got {ans}'
    print(f'PASS: sum_it(3, 5) = 12')
    
    ans = sum_it(4, 7)
    assert ans == 22, f'Expected answer to be 22 but got {ans}'
    print(f'PASS: sum_it(4, 7) = 22')
    
    ans = sum_it(3, 9)
    assert ans == 42, f'Expected answer to be 42 but got {ans}'
    print(f'PASS: sum_it(3, 9) = 42')
