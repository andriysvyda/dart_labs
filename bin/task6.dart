import 'dart:io';

// Реалізувати клас, що представляє одновимірний масив і містить опис індексатора для доступу
// до елементів. Передбачаити методи введення/виведення, знаходження максимального та
// мінімального елементів.

class OneDimensionalArray {

  List<int> _array;

  OneDimensionalArray(int size) : _array = List<int>.filled(size, 0);

  int get length => _array.length;

  int operator [](int index) => _array[index];

  void operator []=(int index, int value) {
    _array[index] = value;
  }

  void input() {
    for (int i = 0; i < _array.length; i++) {
      print('Введіть значення елемента з індексом $i:');
      _array[i] = int.parse(stdin.readLineSync()!);
    }
  }

  void output() {
    print('Масив:');
    for (int i = 0; i < _array.length; i++) {
      print('Елемент з індексом $i: ${_array[i]}');
    }
  }

  int findMax() {
    int max = _array[0];
    for (int i = 1; i < _array.length; i++) {
      if (_array[i] > max) {
        max = _array[i];
      }
    }
    return max;
  }

  int findMin() {
    int min = _array[0];
    for (int i = 1; i < _array.length; i++) {
      if (_array[i] < min) {
        min = _array[i];
      }
    }
    return min;
  }
}

void main() {
  OneDimensionalArray array = OneDimensionalArray(5);

  array.input();

  array.output();

  print('Максимальний елемент: ${array.findMax()}');
  print('Мінімальний елемент: ${array.findMin()}');
}