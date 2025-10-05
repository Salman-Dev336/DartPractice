class NumberFilter {
  List<int> filterOddNumbers(List<int> numbers) {
    List<int> evenNumbers = [];
    for (int num in numbers) {
      if (num % 2 == 0) {
        evenNumbers.add(num);
      }
    }
    return evenNumbers;
  }
}

void main() {
  NumberFilter nf = NumberFilter();
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 15];
  List<int> evenNums = nf.filterOddNumbers(nums);

  print(" List: $nums");
  print("Even Numbers in the list: $evenNums");
}
