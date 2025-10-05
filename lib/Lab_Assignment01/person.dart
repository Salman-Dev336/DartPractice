class Person {
  // use private variables because we want to use getters and setters
  // private variables are good for encapsulation
  // and we cant acces it directly from outside the class
  String _name = '';
  int _age = 0;

  String get name {
    return _name;
  }

  set name(String n) {
    _name = n;
  }

  int get age {
    return _age;
  }

  set age(int a) {
    _age = a;
  }

  // constructor
  Person(this._name, this._age);
}

class Employee extends Person {
  int _salary = 0;

  int get salary {
    return _salary;
  }

  set salary(int s) {
    _salary = s;
  }

  Employee(String name, int age, this._salary) : super(name, age);

  void display() {
    print('name : $name, age : $age, salary: $salary');
  }
}

void main() {
  Employee employee = Employee('salman ', 23, 100000);
  employee.display();

  employee.name = "mashal khyber";
  employee.age = 23;
  employee.salary = 200000;
  employee.display();
}
