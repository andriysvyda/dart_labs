// Дано масив, який зберігає кількість відвідувачів магазину протягом тижня. Вивести на екран
// номери днів, коли кількість відвідувачів була мінімальною.


void main() {  
  List<int> visitorsCount = [50, 40, 60, 30, 45, 35, 50];
  
  int minVisitors = visitorsCount.reduce((a, b) => a < b ? a : b);

  List<int> minDays = [];
  for (int i = 0; i < visitorsCount.length; i++) {
    if (visitorsCount[i] == minVisitors) {
      minDays.add(i + 1);
    }
  }

  print('Номери днів з мінімальною кількістю відвідувачів:');
  print(minDays.join(', '));
}
