import 'dart:math';

//task1
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

//task2
class Novel extends Book {
  String genre;

  Novel(String title, String author, int numberOfPages, this.genre)
      : super(author, title, numberOfPages);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}

//task3
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void printArea(Shape shape) {
  print('The area is: ${shape.area()}');
}
//task4

abstract class Serializable {
  String toJson();
}

class User implements Serializable {
  String name;
  int age;

  User(this.name, this.age);

  @override
  String toJson() {
    return '{"name": "$name", "age": $age}';
  }
}

class Product implements Serializable {
  String productName;
  double price;

  Product(this.productName, this.price);

  @override
  String toJson() {
    return '{"productName": "$productName", "price": $price}';
  }
}

void main() {
  print("task1 : ");
  Book b1 = Book('To Kill a Mockingbird', 'Harper Lee', 281);
  b1.displayInfo();
  print("task2 : ");
  Novel novel1 = Novel('To Kill a Mockingbird', 'Harper Lee', 281, 'Fiction');
  novel1.displayInfo();
  print("task3 : ");
  Circle circle = Circle(4);
  Rectangle rectangle = Rectangle(2, 5);
  printArea(circle);
  printArea(rectangle);
  print("task4 : ");
  User user = User('john', 20);
  Product product = Product('iphone', 999.99);
  print('User to JSON: ${user.toJson()}');
  print('Product to JSON: ${product.toJson()}');
  print("task5 : ");
}
