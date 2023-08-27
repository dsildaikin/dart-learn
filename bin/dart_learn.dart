import 'package:dart_learn/dart_learn_lib.dart';

void main() {
  Car ix60 = Car('black', 230)
    ..display()
    ..color = 'bronze'
    ..hp = 619
    ..display();

  Bus vwTransporter = Bus('Marina Blue', 249, 'intercity')..display();

  Car isuzu = Bus('white', 221, 'airport')..display();
}
