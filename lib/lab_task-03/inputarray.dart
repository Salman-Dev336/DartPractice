import 'dart:io';

void main() {
  // Define an integer array
  List<int> numbers = [5, 12, 7, 25, 18];
  print("Array: $numbers");

  // Ask the user for a number to search
  stdout.write("Enter a number to search: ");
  int searchNum = int.parse(stdin.readLineSync()!);

  // Search for the number in the array
  int index = numbers.indexOf(searchNum);

  if (index != -1) {
    print("Element found at index $index");
  } else {
    print("Not Found");
  }
}
