/*
Q4. Update Attribute with a Method
- Create a class Book with attributes title and pages.
- Add a method addPages(int extraPages) that increases the pages.
- In main(), create a book and use the method to update its pages, then print the result.
*/

void main() {
  Book oopBook = Book('OOP With Dart', 200);
  print('Number of Pages Befor increasing: ${oopBook.pages}');

  oopBook.addPages(50);
  print('Number of Pages After increasing: ${oopBook.pages}');
}

class Book {
  String title;
  int pages;

  Book(this.title, this.pages);

  addPages(int extraPages) {
    pages += extraPages;
  }
}
