class Animal {
  void speak() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Dog says: Woof! Woof!");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Cat says: Meow! Meow!");
  }
}

void main() {
  // Instantiate objects
  Dog dog = Dog();
  Cat cat = Cat();

  // Call speak() method
  dog.speak();
  cat.speak();
}
