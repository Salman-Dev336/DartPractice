import 'dart:io';

void main() {
  stdout.write("Enter numbers separated by spaces: ");
  List<int> numbers = stdin
      .readLineSync()!
      .trim()
      .split(RegExp(r'\s+'))
      .where((e) => e.isNotEmpty)
      .map(int.parse)
      .toList();

  print("Input: $numbers");

  // Ascending sort
  List<int> ascending = List.from(numbers);
  ascending.sort();
  print("Ascending: $ascending");

  // Descending sort
  List<int> descending = List.from(numbers);
  descending.sort((a, b) => b.compareTo(a));
  print("Descending: $descending");
}
