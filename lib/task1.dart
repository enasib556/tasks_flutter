class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $numberOfPages');
  }
}

void main() {
  Book b1 = Book('To Kill a Mockingbird', 'Harper Lee', 281);
  b1.displayInfo();
}
