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
