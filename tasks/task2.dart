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

class Novel extends Book {
  String genre;

  Novel(String title, String author, int numberOfPages, this.genre)
      : super(title, author, numberOfPages);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}

void main() {
  Novel novel1 = Novel('To Kill a Mockingbird', 'Harper Lee', 281, 'Fiction');
  novel1.displayInfo();
}
