# borrowed:
# The function receives an immutable reference.
# This means the function can read the original value,
# (it is NOT copied), but it cannot mutate it.

# inout:
# The function receives a mutable reference.
# This means the function can read the original value,
# and mutate the original value (it is NOT copied).

# owned:
# The function takes ownership.
# This means the function has exclusive mutable access to the
# argument - the function caller does not have access to this
# value anymore. Often, this also implies the caller should 
# transfer ownership to this function (although sometimes 
# this could just be a copy).

# note:
# All values passed into mojo def are owned by default.
# All values passed into mojo fn are borrowed by default.

fn add(inout x: Int, borrowed y: Int):
    x += y

from tensor import Tensor, TensorShape

# borrowed example
def print_shape(borrowed tensor: Tensor[DType.float32]):
    shape = tensor.shape()
    print(shape.__str__())

# inout example
# This is more memory efficient as it doesnt copy the value
def mutate(inout y: Int):
    y += 1

# owned example
fn take_text(owned text: String):
    text += " taken"
    print(text)

fn my_function():
    let text: String = "hello"
    take_text(text^) # ^ is used to transfer ownership
    # print(text) therefore this will not work as the function has ownership

def main():
    var a = 1;
    let b = 2;
    add(a, b)
    print(a)
    print(b)
    let tensor = Tensor[DType.float32](256, 256)
    print_shape(tensor)
    # let c = 1 wont work as it is immutable
    var c = 1
    mutate(c)
    print(c)
    my_function()
