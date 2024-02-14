from python import Python

fn use_tf() raises:
    let tf = Python.import_module("tensorflow")
    let a = tf.constant(1)
    print(a)

def main():
    print("Hello, world!")
    use_tf()
