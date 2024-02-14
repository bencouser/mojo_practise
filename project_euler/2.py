def get_fib(a, b):
    return a + b


def main():
    sum = 2
    a = 1
    b = 2
    while b < 4000000:
        a, b = b, get_fib(a, b)
        if b % 2 == 0:
            sum += b
    print(sum)


if __name__ == '__main__':
    main()
