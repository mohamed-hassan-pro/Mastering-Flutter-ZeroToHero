/*
Q4. Multiple Objects - Create a class Book with attributes title and author. - Create two objects from
the Book class and print a message for each one.
*/

void main() {
  Book book1 = Book("Clean Code", "Robert C. Martin");
  Book book2 = Book("Refactoring", "Martin Fowler");

  print("Object 1: ${book1.title} by ${book1.author}");
  print("Object 2: ${book2.title} by ${book2.author}");
}

class Book {
  String title;
  String author;

  Book(this.title, this.author);
}
