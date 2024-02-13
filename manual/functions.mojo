def greet(name):
    return "Hello, " + name + "!"

def greet2(name: String) -> String:
    return "Hello, " + name + "!"

fn greet3(name: String) -> String:
    let greeting = "Hello, " + name + "!"
    return greeting

fn pow(base: Int, exp: Int = 2) -> Int:
    return base ** exp

fn use_defaults():
    let z = pow(2)
    let z2 = pow(exp=3, base=2)
    print(z)
    print(z2)

# Overloading if you want more than one dtype
fn add(x: Int, y: Int) -> Int:
    return x + y

fn add(x: String, y: String) -> String:
    return x + y

def main():
    print(greet("World"))
    print(greet2("World"))
    print(greet3("World"))
    print(pow(2, 3))
    use_defaults()
    print(add(1, 2))
    print(add("Hello, ", "World"))
