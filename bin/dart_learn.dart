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
}
