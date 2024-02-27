import 'dart:io';


// З клавіатури вводиться позначення категорії («А», «В», «С») , яку
// вказано у водійському посвідченні. Вивести на екран транспортний
// засіб, яким може керувати водій.

void main() {
  print('Введіть позначення категорії («A», «B», «C»):');
  String category = stdin.readLineSync() ?? "";
  category = category.toUpperCase();
  String vehicle = '';

  switch (category) {
    case 'A':
      vehicle = 'легковий автомобіль';
      break;
    case 'B':
      vehicle = 'вантажівка';
      break;
    case 'C':
      vehicle = 'мотоцикл';
      break;
  }

  if (vehicle.isNotEmpty) {
    print('Ви можете керувати $vehicle');
  } else {
    print('Ви не можете керувати жодною категорією');
  }
}
