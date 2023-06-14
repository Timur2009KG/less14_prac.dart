import 'dart:math';
import 'dart:io';

void main() {
  
//2
  // playGame();


//3
  // print('Введите число: ');
  // var num = double.parse(stdin.readLineSync()!);

  // print('Введите степень: ');
  // var exp = int.parse(stdin.readLineSync()!);

  // var result = power(num, exp);
  // print('$num в степени $exp равно $result');

//4
  // stdout.write('Введите натуральное число: ');
  // int number = int.parse(stdin.readLineSync()!);

  // int result = sumOfDigits(number);
  // print('Сумма цифр числа $number равна $result');

//5
  print(fib(3));   // Вывод: 2
  print(fib(7));   // Вывод: 13
  print(fib(77));  // Вывод: 5527939700884757
}
//2
// int throwDice() {
//   Random random = Random();
//   return random.nextInt(6) + 1;
// }
// int throwDice2(){
//   Random random2 = Random();
//   return random2.nextInt(6) + 1;
// }

// void playGame() {
//   while (true) {
//     print('Введите 1, чтобы бросить кость, или 2, чтобы закончить:');
//     String userInput = stdin.readLineSync()!;

//     if (userInput == '1') {
//       int diceResult = throwDice();
//       print('Выпало: $diceResult');
//       int diceResult2 = throwDice2();
//       print('Выпало: $diceResult2');
//     } else if (userInput == '2') {
//       print('wasted');
//       break;
//     } else {
//       print('Некорректный ввод. Пожалуйста, введите 1 или 2.');
//     }
//   }
// }


//3
double power(double a, int b) {
  return pow(a, b).toDouble();
}



//4
int sumOfDigits(int N) {
  int sum = 0;
  String numberString = N.toString();
  for (int i = 0; i < numberString.length; i++) {
    sum += int.parse(numberString[i]);
  }
  return sum;
}

//5
int fib(int n) {
  if (n <= 0) {
    throw Exception("Число должно быть положительным");
  } else if (n == 1 || n == 2) {
    return 1;
  } else {
    int a = 1;
    int b = 1;
    int result = 0; // Исправление: объявляем result перед циклом
    for (int i = 3; i <= n; i++) {
      result = a + b;
      a = b;
      b = result;
    }
    return result;
  }
}


  

