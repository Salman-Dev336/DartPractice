// Base class
class Animal {
  void speak() {
    print("Animal sounds");
  }
}

class Dog extends Animal {
  void speak() {
    print(" Woof! Woof!");
  }
}

class Cat extends Animal {
  void speak() {
    print(" Meow! Meow!");
  }
}

void main() {
  Dog dog = Dog();
  Cat cat = Cat();

  dog.speak();
  cat.speak();
}
