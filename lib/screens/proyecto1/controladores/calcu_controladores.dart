import 'package:get/get.dart';
import 'dart:math';

class CalcuControladores extends GetxController {
  var firstNumber = '0'.obs;
  var secondNumber = '0'.obs;
  var mathResult = '0'.obs;
  var operation = '+'.obs;
  var specialOperation = ''.obs;

  void resetAll() {
    firstNumber.value = '0';
    secondNumber.value = '0';
    mathResult.value = '0';
    operation.value = '0';
    specialOperation.value = '';
  }

  void changeNegativePositive() {
    if (mathResult.startsWith('-')) {
      mathResult.value = mathResult.value.replaceFirst('-', '');
    } else {
      mathResult.value = '-${mathResult.value}.';
    }
  }

  String addNumber(String number) {
    if (mathResult.value == '0') {
      return mathResult.value = number;
    }

    if (mathResult.value == '-0') {
      return mathResult.value = number;
    }

    return mathResult.value += number;
  }

  void addDecimalPoint() {
    if (mathResult.contains('.')) return;

    if (mathResult.startsWith('0')) {
      mathResult.value = '0.';
    } else {
      mathResult.value = '${mathResult.value}.';
    }
  }

  void selectOperation(String newOperation) {
    operation.value = newOperation;
    firstNumber.value = mathResult.value;
    mathResult.value = '0';
  }

  void deleteLastEntry() {
    if (mathResult.value.replaceAll('-', '').length > 1) {
      mathResult.value = mathResult.value.substring(
        0,
        mathResult.value.length - 1,
      );
    } else {
      mathResult.value = '0';
    }
  }

  void calculateResult() {
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(mathResult.value);

    secondNumber.value = mathResult.value;

    switch (operation.value) {
      case '+':
        mathResult.value = '${num1 + num2}';
        break;

      case '-':
        mathResult.value = '${num1 - num2}';
        break;

      case '/':
        mathResult.value = '${num1 / num2}';
        break;

      case 'X':
        mathResult.value = '${num1 * num2}';
        break;

      default:
        return;
    }

    if (mathResult.value.endsWith('.0')) {
      mathResult.value = mathResult.value.substring(
        0,
        mathResult.value.length - 2,
      );
    }
  }
// Funcion para el calculo de porcentaje
  void calculateSqrt() {
    double num = double.parse(mathResult.value);
    mathResult.value = '${num / 100}';
    if (mathResult.value.endsWith('.0')) {
      mathResult.value = mathResult.value.substring(
        0,
        mathResult.value.length - 2,
      );
    }
    specialOperation.value = '$num%';
  }

  void calculateLog() {
    double num = double.parse(mathResult.value);
    if (num <= 0) {
      mathResult.value = 'Error';
      specialOperation.value = '';
      return;
    }
    mathResult.value = '${log(num) / ln10}';
    if (mathResult.value.endsWith('.0')) {
      mathResult.value = mathResult.value.substring(
        0,
        mathResult.value.length - 2,
      );
    }
    specialOperation.value = 'lg($num)';
  }
// Funcion para hacer elevado al cuadrado
  void addPi() {
    double num = double.parse(mathResult.value);
    mathResult.value = '${num * num}';
    if (mathResult.value.endsWith('.0')) {
      mathResult.value = mathResult.value.substring(
        0,
        mathResult.value.length - 2,
      );
    }
    specialOperation.value = '$num²';
  }
}
