void main() {
  Map<String, int> map1 = {"one": 1, "two": 2, "three": 3};
  Map<String, int> map2 = {"four": 4, "five": 5};

  map1.addAll(map2);
  print(map1);
}
