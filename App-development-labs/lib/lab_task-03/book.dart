class Book {
  String title;
  String author;
  double price;

  // Constructor
  Book(this.title, this.author, this.price);
}

void main() {
  // Create a list of books
  List<Book> books = [
    Book("Clean Code", "Robert C. Martin", 750),
    Book("Effective Java", "Joshua Bloch", 950),
    Book("Dart Programming", "Some Author", 450),
    Book("Flutter in Action", "Eric Windmill", 600),
    Book("The Pragmatic Programmer", "Andrew Hunt", 400),
  ];

  print("📚 All Book Details:\n");

  // Print all book details using a for loop
  for (var book in books) {
    print("${book.title} by ${book.author} - Rs.${book.price}");
  }

  print("\n📚 Books with Price > 500:\n");

  // Print only books with price > 500
  for (var book in books) {
    if (book.price > 500) {
      print("${book.title} by ${book.author} - Rs.${book.price}");
    }
  }
}
