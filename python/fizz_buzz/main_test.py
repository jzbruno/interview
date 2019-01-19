from main import fizz_buzz


def test_fizz_buzz():
    for i in range(0, 100):
        result = fizz_buzz(i)

        if i % 3 == 0 and i % 5 == 0:
            assert(result == "FizzBuzz")
        elif i % 3 == 0:
            assert(result == "Fizz")
        elif i % 5 == 0:
            assert(result == "Buzz")
        else:
            assert(result == str(i))


if __name__ == '__main__':
    test_fizz_buzz()
