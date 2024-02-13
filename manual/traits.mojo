@value
struct Duck:
    fn quack(self):
        print("Quack!")


@value
struct Cow:
    fn quack(self):
        print("Moo!")

fn make_it_quack(definitely_a_duck: Duck):
    definitely_a_duck.quack()

fn make_it_quack(not_a_duck: Cow):
    not_a_duck.quack()

# Manageable with 2 structs but rewriting for many will 
# be a pain

trait Quackable:
    fn quack(self):
        ... # meaning that the method is not implemented

# Note in the furute there will be defining fields and methods
# For now there is only method signatures

@value
struct DuckT(Quackable):
    fn quack(self):
        print("Quack! Trait")

@value
struct CowT(Quackable):
    fn quack(self):
        print("Moo! Trait")

fn make_it_quack[T: Quackable](maybe_a_duck: T):
    maybe_a_duck.quack()

# Inheritance
trait Animal:
    fn make_sound(self):
        ...

trait Bird(Animal): # add comma in brackets for more than one
    fn fly(self):
        ...

fn main():
    print("Hello, world!")
    make_it_quack(Duck())
    make_it_quack(Cow())
    make_it_quack(DuckT())
    make_it_quack(CowT())
