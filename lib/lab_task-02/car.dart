class Car {
  String brand = '';
  String model = '';
  int year = 0;

  // Method to display car details
  void display_info() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

void main() {
  // Creating a Car object and assigning values directly
  Car myCar = Car();
  myCar.brand = 'Toyota';
  myCar.model = 'Corolla';
  myCar.year = 2022;

  // Displaying the car details
  myCar.display_info();
}
