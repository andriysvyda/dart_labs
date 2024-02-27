import 'dart:io';

// Знайти середнє арифметичне N чисел, значення яких вводяться з
// клавіатури.

void main() {
  print('Введіть кількість чисел N:');
  int n = int.parse(stdin.readLineSync()!);

  double sum = 0;

  for (int i = 0; i < n; i++) {
    print('Введіть число ${i + 1}:');
    double num = double.parse(stdin.readLineSync()!);
    sum += num;
  }

  double average = sum / n;

  print('Середнє арифметичне: $average');
}
