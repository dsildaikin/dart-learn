import 'package:dart_learn/dart_learn_lib.dart';

void main() {
  Car ix60 = Car('black', 230)
    ..display()
    ..color = 'bronze'
    ..hp = 619
    ..display();

  Bus vwTransporter = Bus('Marina Blue', 249, 'intercity')..display();

  Car isuzu = Bus('white', 221, 'airport')..display();

  Shape sq = Square(12)..calculateArea();
  Shape circle = Circle(10)..calculateArea();

  Duck duck = Duck()..fly();
  Salmon salmon = Salmon()..swim();

  Ebook eBook = Ebook('White Fang', 5)
    ..download()
    ..read();
  Ebook eBook2 = Ebook('Mymy', 3);

  User user1 = User(id: 423, name: 'Alexandra');
  User user2 = User(id: 5314, name: 'Vasiliy');

  Ebook eBook2Pictures = eBook2 + 4;

  print(
      'After adding pictures to the "${eBook2.title}" book, the book file size became ${eBook2Pictures.size} Gb');

  print(eBook < eBook2);

  Order ali = Order('AliExpress package')
    ..runOperation(OrderStatus.shipped)
    ..printThanks();
}

extension on Order {
  void printThanks() => print('Thank you for your order!');
}
