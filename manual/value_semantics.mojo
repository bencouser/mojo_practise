def add_one(y: Int):
    y += 1
    print(y)

def update_tensor(t: Tensor[DType.uint8]):
    t[1] = 3
    print(t)

# Each variable maintains unique ownership of its value
fn add_two(y: Int):
    # y += 2 # Causes an error because fn parameters are immutable
    var z = y
    z += 2
    print(z)

def main():
    x = 1
    y = x
    y += 1
    print(x)
    print(y)
    add_one(x)
    print(x)
    t = Tensor[DType.uint8](3)
    t[0] = 1
    t[1] = 2
    update_tensor(t)
    print(t)
