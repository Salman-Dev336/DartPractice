class Car {
  String brand;
  String model;
  int year;

  // Default constructor
  Car(this.brand, this.model, this.year);

  // Named constructor for old cars
  Car.oldCar(this.brand, this.model) : year = 2000; // fixed old value
}

void main() {
  // Create a list of cars using both constructors
  List<Car> cars = [
    Car("Toyota", "Corolla", 2021),
    Car("Honda", "Civic", 2018),
    Car.oldCar("Suzuki", "Mehran"), // year = 2000
    Car("Ford", "Focus", 2005),
    Car.oldCar("BMW", "3 Series"), // year = 2000
  ];

  print("Cars older than 2010:\n");

  // Use forEach loop to print only cars older than 2010
  cars.forEach((car) {
    if (car.year < 2010) {
      print("${car.brand} ${car.model} (${car.year})");
    }
  });
}
