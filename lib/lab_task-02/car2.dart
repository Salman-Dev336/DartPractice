class Car {
  String brand;
  String model;
  int year;

  // Constructor
  Car(this.brand, this.model, this.year);

  // Method to display car details
  void display_info() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

void main() {
  // Instantiating multiple Car objects
  Car car1 = Car('Honda', 'Civic', 2020);
  Car car2 = Car('Ford', 'Mustang', 2021);
  Car car3 = Car('toyota', 'grande', 2024);

  // Displaying the details of the cars
  car1.display_info();
  car2.display_info();
  car3.display_info();
}
