import 'dart:math';

// Створити функцію, яка випадковим чином виводить на екран одне із 4 зображень (шляхи до
// зображень передаються у функцію)

void printRandomImagePath(List<String> imagePaths) {
  Random random = Random();
  int randomIndex = random.nextInt(imagePaths.length);

  print('Зображення: ${imagePaths[randomIndex]}');
}

void main() {
  List<String> images = [
    'C:\\image (1)',
    'C:\\image (2)',
    'C:\\image (3)',
    'C:\\image (4)',
  ];

  printRandomImagePath(images);
}
