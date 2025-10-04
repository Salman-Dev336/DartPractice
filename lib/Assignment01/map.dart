void main() {
  List<Map<String, dynamic>> products = [
    {"name": "Book", "price": 900, "quantity": 5},
    {"name": "Chair", "price": 6000, "quantity": 5},
    {"name": "Marker", "price": 300, "quantity": 10},
  ];

  // Adding a new product
  products.add({"name": "Bag", "price": 1500, "quantity": 2});

  // Searching for a product by name
  String searchName = "Chair";
  Map<String, dynamic>? found;

  for (var p in products) {
    if (p["name"] == searchName) {
      found = p;
      break;
    }
  }

  if (found != null) {
    print("Product Found: $found");
  } else {
    print("Product not found!");
  }

  // Sorting products by price
  products.sort((a, b) {
    return a["price"].compareTo(b["price"]);
  });

  // Display all products after sorting
  print("\nProducts sorted by price:");
  for (var p in products) {
    print(p);
  }
}
