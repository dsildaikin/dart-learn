import 'dart:math';

class Car {
  String _color;
  int _hp;

  String get color => _color;

  int get hp => _hp;

  bool get isElectric => _hp > 400;

  set color(String color) {
    if (color != 'black') {
      _color = color;
    }
  }

  set hp(int hp) {
    if (hp >= 300) {
      _hp = hp;
    }
  }

  factory Car(String color, int hp) {
    if (color == 'black') {
      color = 'undefined';
    }
    if (hp < 300) {
      hp = 0;
    }
    return Car._create(color, hp);
  }

  Car._create(this._color, this._hp);

  void display() {
    print('Car specifications\n'
        '  color: $_color\n'
        '  hp: $_hp\n'
        '  electric engine: $isElectric');
  }
}

class Bus extends Car {
  final String _busType;

  Bus(String color, int hp, this._busType) : super._create(color, hp);

  @override
  void display() {
    super.display();
    print('  type of bus: $_busType');
  }
}

abstract class Shape {
  void calculateArea();
}

class Square extends Shape {
  final double _sideLength;

  Square(this._sideLength);

  @override
  void calculateArea() {
    print(
        'The area of a square with a side of $_sideLength meters is ${pow(_sideLength, 2)} square meters.');
  }
}

class Circle extends Shape {
  final double _radius;

  Circle(this._radius);

  @override
  void calculateArea() {
    print(
        'The area of a circle with a radius of $_radius meters is ${pi * pow(_radius, 2)} square meters.');
  }
}

abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

abstract class Bird implements Flyable {
  @override
  void fly() {
    print("The bird is flying.");
  }
}

abstract class Fish implements Swimmable {
  @override
  void swim() {
    print("The fish is swimming.");
  }
}

class Duck extends Bird {
  @override
  void fly() {
    print("The duck is flying.");
  }
}

class Salmon extends Fish {
  @override
  void swim() {
    print("The salmon is swimming.");
  }
}

class Book {
  String title; // название книги
  Book(this.title);

  void read() => print("Читаем книгу \"$title\"");
}

class File {
  int size = 0; // размер файла
  void download() => print("Загружаем файл");
}

class Ebook extends Book implements File {
  Ebook(super.title, this.size);

  @override
  int size;

  @override
  void download() => print("Загружаем книгу $title, весом $size ГБ");
}
