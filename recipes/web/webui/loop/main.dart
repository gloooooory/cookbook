import "dart:html";

class Book {
  String title;
  num price;
  num numPages;
  bool available;
 
  Book(this.title, this.price, this.numPages, [this.available=true]);
}

List<Book> books = [];
bool get noBooks => books.isEmpty;

bool showBookDetails = true;

emptyBookList() {
  books = []; 
  return false;
}

main() {
  books = [
    new Book("War and Peace", 20.99, 1013),
    new Book("Anna Karenina", 23.99, 1243, false),
    new Book("The Old Man and the Sea", 8.99, 78)
  ]; 
}

