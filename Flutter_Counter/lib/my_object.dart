import 'dart:math';

class MyObject {
  int _value;
  MyObject(this._value);

  int get value => _value;

  set value(int value) {
    _value = value;
  }

  void increase() {
    _value -= -1;
  }

  void decrease() {
    _value -= 1;
  }

  void square() {
    _value *= _value;
  }

  int power(int exponent) {
    if (exponent == 0) {
      return 1;
    }

    int result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= _value;
    }
    return _value = result;
  }
}
