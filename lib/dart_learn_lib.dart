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

mixin Book {
  String _title = ''; // название книги
  void read() => print("Reading a book \"$_title\"");
}

mixin File {
  int _size = 0; // размер файла
  void download() => print("Download file");
}

class Ebook with Book, File {
  Ebook(String title, int size) {
    _title = title;
    _size = size;
  }

  String get title => _title;

  int get size => _size;

  Ebook operator +(int sizePicturesBook) =>
      Ebook(_title, _size + sizePicturesBook);

  bool operator <(Ebook otherEbook) => _size < otherEbook._size;

  @override
  void download() => print("Download the book $_title $_size Gb");
}

class User<T> {
  final T _id;
  final String _name;

  User({required T id, required String name})
      : _id = id,
        _name = name {
    print(
        'The server was logged in by a user with id $_id and the name of $_name at ${DateTime.now()}');
  }
}

enum OrderStatus { accepted, processing, shipped, delivered }

class Order {
  final String _name;

  Order(this._name);
  void runOperation(OrderStatus orderStatus) {
    switch (orderStatus) {
      case OrderStatus.accepted:
        print('Order $_name is accepted');
        break;
      case OrderStatus.processing:
        print('Order $_name is processing');
        break;
      case OrderStatus.shipped:
        print('Order $_name is shipped');
        break;
      case OrderStatus.delivered:
        print('Order $_name is delivered');
    }
  }
}
