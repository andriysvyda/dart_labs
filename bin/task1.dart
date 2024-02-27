import 'dart:io';

// Дано ширину екрана та кількість елементів, які повинні бути відображені у
// рядку. Визначити ширину елементів, які повинні бути відображені у цьому
// рядку.

void main() {
  int screenWidth = 1920;
  stdout.write("введіть кількість елементів на екрані : ");
  int numOfElements = int.parse(stdin.readLineSync()??"");

  int elementWidth = screenWidth ~/ numOfElements;

  print('Ширина кожного елемента у рядку: $elementWidth');
}