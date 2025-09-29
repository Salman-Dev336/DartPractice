void main() {
  // Initialize an array with 5 elements
  List<int> numbers = [10, 20, 30, 40, 50];

  print("Original Array: $numbers");

  // Insert 25 at index 2
  numbers.insert(2, 25);
  print("After inserting 25 at index 2: $numbers");

  // Delete element at index 4
  numbers.removeAt(4);
  print("After deleting element at index 4: $numbers");
}
