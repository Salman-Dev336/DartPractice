void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 1200, 'quantity': 5},
    {'name': 'Phone', 'price': 800, 'quantity': 10},
    {'name': 'Tablet', 'price': 600, 'quantity': 8},
  ];

  // Adding new product
  products.add({'name': 'Headphones', 'price': 150, 'quantity': 15});

  // Searching  for a product
  String searchName = 'Phone';
  Map<String, dynamic>? found;

  for (var p in products) {
    if (p['name'] == searchName) {
      found = p;
      break;
    }
  }

  if (found != null) {
    print("Product Found: $found");
  } else {
    print("Product not found!");
  }

  // Sort products by price
  products.sort((a, b) {
    return a['price'].compareTo(b['price']);
  });

  // Displaying all product

  print("Products sorted by price:");
  for (var p in products) {
    print(p);
  }
}
