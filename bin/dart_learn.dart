// import 'package:dart_learn/dart_learn_lib.dart';
//
// void main() {
//   Future<void> futureTest = Future.delayed(
//     Duration(seconds: 2),
//     () => print('=====hi, future====='),
//   );
//   try {
//     Car ix60 = Car('black', 230)
//       ..display()
//       ..color = 'bronze'
//       ..hp = 619
//       ..display();
//   } on HpException catch (e) {
//     print(e);
//     print('${e.value}\n');
//   }
//
//   Bus vwTransporter = Bus('Marina Blue', 249, 'intercity')..display();
//
//   Car isuzu = Bus('white', 221, 'airport')..display();
//
//   Shape sq = Square(12)..calculateArea();
//   Shape circle = Circle(10)..calculateArea();
//
//   Duck duck = Duck()..fly();
//   Salmon salmon = Salmon()..swim();
//
//   Ebook eBook = Ebook('White Fang', 5)
//     ..download()
//     ..read();
//   Ebook eBook2 = Ebook('Mymy', 3);
//
//   User user1 = User(id: 423, name: 'Alexandra');
//   User user2 = User(id: 5314, name: 'Vasiliy');
//
//   Ebook eBook2Pictures = eBook2 + 4;
//
//   print(
//       'After adding pictures to the "${eBook2.title}" book, the book file size became ${eBook2Pictures.size} Gb');
//
//   print(eBook < eBook2);
//
//   Order ali = Order('AliExpress package')
//     ..runOperation(OrderStatus.shipped)
//     ..printThanks();
//
//   List<int> list = [1, 3, 5, 6, 7];
//   for (var element in list) {
//     print('Element $element');
//   }
//
//   var list2 = ["Tom", "Alice", "Bob", "Sam", "Kate"];
//   list2.removeWhere((item) => item.length == 3);
//   print(list2);
//
//   // sort() parameter a>b return a; a<b return b; a==b return 0
//
//   List<int> list4 = List.filled(10, 4);
//   var list5 = List.generate(12, (int index) => index);
//   print(list4);
//   print(list5);
//
//   List<String> week = [];
//   week.add('Monday');
//   week.add('Tuesday');
//   week.add('Wednesday');
//   week.add('Thursday');
//   week.add('Friday');
//   week.add('Saturday');
//   week.add('Sunday');
//   week.forEach(print);
//   week.removeRange(5, 7);
//   print(week);
//
//   final week2 = week;
//   print(week);
//
//   var personList = [
//     Person('Ivan', 21),
//     Person('Dmitrii', 24),
//     Person('Alexei', 19),
//     Person('Darya', 21),
//     Person('Valeriya', 20)
//   ];
//
//   personList.sort((a, b) => b.age - a.age);
//   for (var person in personList) {
//     print('Employee ${person.name} - ${person.age} y.o.');
//   }
//   Set<String> set = {};
//   set.addAll(week);
//   print(set);
//
//   Map<int, String> students = {};
//   for (int i = 0; i < 5; i++) {
//     int id = i;
//     String name = personList[i].name;
//     students[id] = name;
//   }
//   students.forEach(
//     (id, name) {
//       print('id: $id\tname: $name');
//     },
//   );
//   print('\n----main() ends-----\n');
// }
//
// extension on Order {
//   void printThanks() => print('Thank you for your order!');
// }
void main() {
  Future<String> future = Future.delayed(Duration(seconds: 1), () {
    print("Выполняется Future");
    return "Hello Dart";
  });

  future.then((value) {
    print("Из Future получено значение: $value");
  }).catchError((err) {
    print("Ошибка: $err");
  }).whenComplete(() {
    print("Eventually you became a flutter developer.");
  });

  print("Ждем получения значения из Future");
}
