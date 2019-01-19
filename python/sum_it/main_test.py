from main import sum_it


def test_sum_it():
    assert(sum_it(3, 5) == 12)
    assert(sum_it(4, 7) == 22)
    assert(sum_it(3, 9) == 42)


if __name__ == '__main__':
    test_sum_it()
