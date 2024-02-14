fn get_fib(a: Int, b: Int) -> Int:
    return a + b

fn main():
    var sum: Int = 2
    var a: Int = 1
    var b: Int = 2
    while b < 4000000:
        a, b = b, get_fib(a, b)
        if b % 2 == 0:
            sum += b
    print(sum)
