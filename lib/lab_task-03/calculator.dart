class Calculator {
  // Method to perform safe division
  double? divide(int a, int b) {
    try {
      return a / b; // may throw if b == 0
    } catch (e) {
      print("Error: Division by zero for $a ÷ $b");
      return null; // return null to indicate failure
    }
  }
}

void main() {
  Calculator calc = Calculator();

  // List to store results
  List<double?> results = [];

  // Test data (pairs of numbers)
  List<List<int>> testPairs = [
    [10, 2],
    [15, 3],
    [8, 0], // will cause division by zero
    [20, 5],
    [7, 0], // another zero case
  ];

  // Using for loop to calculate results
  for (var pair in testPairs) {
    double? result = calc.divide(pair[0], pair[1]);
    results.add(result);
  }

  print("\n--- Division Results ---");

  // Using foreach to print all results
  results.asMap().forEach((index, value) {
    var pair = testPairs[index];
    print("${pair[0]} ÷ ${pair[1]} = ${value ?? "Error"}");
  });
}
