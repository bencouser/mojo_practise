### Language Basics

def greet(name):
    return "Hello, " + name + "!"

fn greet2(name: String) -> String:
    return "Hello, " + name + "!"

def do_math(x):
    var y = x + x # mutable
    y = y * y
    let z = y + x # immutable
    print(z)

def add_one(x):
    let y: Int = 1
    print(x + y)

fn add_two(x: Int):
    let y: Int = 2
    print(x + y)

struct MyPair:
    var first: Int
    var second: Int

    fn __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second

    fn dump(self):
        print(self.first)
        print(self.second)

fn use_mypair():
    let mine = MyPair(1, 2)
    mine.dump()

trait MyTrait:
    fn my_method(self, x: Int): ...

struct MyStruct:

    fn __init__(inout self,):
        pass

    fn my_method(self, x: Int):
        print(x)

fn fun_with_traits[T: MyTrait](x: T):
    x.my_method(69)

# Error coming from this that i dont care to fix
# fn use_fun_with_traits():
#     var mine = MyStruct()
#     fun_with_traits(mine)

# Square bracket -> parameter
# Parenthesis -> argument
# Square brackets are compile time variables
# becoming runtime constants
fn repeat[count: Int](msg: String):
    for i in range(count):
        print(msg)

def loop():
    for x in range(5):
        if x % 2 == 0:
            print(x)

    long_text = "This is a long string"
                " Ttesting"
    print(long_text)

from python import Python

# NOTE: THIS ONLY WORKS ON MYENV
fn use_numy() raises:
    let np = Python.import_module("numpy")
    let ar = np.arange(15).reshape(3, 5)
    print(ar)
    print(ar.shape)

def language_basics():
    print("Hello World!")
    python_name = "Ben"
    print(greet(python_name))
    let name: String = "Ben"
    print(greet2(name))
    do_math(5)
    add_one(5)
    add_two(5)
    use_mypair()
    # use_fun_with_traits()
    repeat[3]("Hello")
    loop()
    use_numy()

def main():
    language_basics()
    return 0
