// Base class
class Employee {
  void getDetails() {
    print("Employee Details");
  }
}

// Subclass
class Manager extends Employee {
  @override
  void getDetails() {
    // First call parent class method
    super.getDetails();

    // Then add manager-specific info
    print("Manager Details: Manages team, oversees projects.");
  }
}

void main() {
  Employee emp = Employee();
  emp.getDetails(); // Output: Employee Details
  Manager mgr = Manager();
  mgr.getDetails();
  // Output:
  // Employee Details
  // Manager Details: Manages team, oversees projects.
}
