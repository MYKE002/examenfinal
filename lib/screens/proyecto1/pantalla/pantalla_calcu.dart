import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Importa el controlador y los widgets
import 'package:examenfinal/screens/proyecto1/controladores/calcu_controladores.dart';
import 'package:examenfinal/screens/proyecto1/widgets/math_result.dart';
import 'package:examenfinal/screens/proyecto1/widgets/cal_button.dart';

class PantallaCalculadora extends StatelessWidget {
  PantallaCalculadora({super.key});

  final calculatorCtrl = Get.put(CalcuControladores());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(child: Container()),

              MathResult(),

              // Primera fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: 'AC',
                      bgColor: const Color.fromARGB(255, 58, 58, 255),
                      onPressed: () => calculatorCtrl.resetAll(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '+/-',
                      bgColor: const Color.fromARGB(255, 58, 58, 255),
                      onPressed: () => calculatorCtrl.changeNegativePositive(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: 'DEL',
                      bgColor: const Color.fromARGB(255, 58, 58, 255),
                      onPressed: () => calculatorCtrl.deleteLastEntry(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '/',
                      bgColor: const Color.fromARGB(255, 255, 58, 58),
                      onPressed: () => calculatorCtrl.selectOperation('/'),
                    ),
                  ),
                ],
              ),
              // Segunda fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: '7',
                      onPressed: () => calculatorCtrl.addNumber('7'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '8',
                      onPressed: () => calculatorCtrl.addNumber('8'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '9',
                      onPressed: () => calculatorCtrl.addNumber('9'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: 'X',
                      bgColor: const Color.fromARGB(255, 255, 58, 58),
                      onPressed: () => calculatorCtrl.selectOperation('X'),
                    ),
                  ),
                ],
              ),
              // Tercera fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: '4',
                      onPressed: () => calculatorCtrl.addNumber('4'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '5',
                      onPressed: () => calculatorCtrl.addNumber('5'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '6',
                      onPressed: () => calculatorCtrl.addNumber('6'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '-',
                      bgColor: const Color.fromARGB(255, 255, 58, 58),
                      onPressed: () => calculatorCtrl.selectOperation('-'),
                    ),
                  ),
                ],
              ),
              // Cuarta fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: '1',
                      onPressed: () => calculatorCtrl.addNumber('1'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '2',
                      onPressed: () => calculatorCtrl.addNumber('2'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '3',
                      onPressed: () => calculatorCtrl.addNumber('3'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '+',
                      bgColor: const Color.fromARGB(255, 255, 58, 58),
                      onPressed: () => calculatorCtrl.selectOperation('+'),
                    ),
                  ),
                ],
              ),
              // Quinta fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: CalculatorButton(
                      text: '0',
                      big: true,
                      onPressed: () => calculatorCtrl.addNumber('0'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '.',
                      onPressed: () => calculatorCtrl.addDecimalPoint(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '=',
                      bgColor: const Color.fromARGB(255, 255, 58, 58),
                      onPressed: () => calculatorCtrl.calculateResult(),
                    ),
                  ),
                ],
              ),
              // Sexta fila de botones (nueva fila añadida)
              // botonnes agregados apartir de aquei par alos funciones que se mencionan
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      // boton del procentaje
                      text: '%',
                      bgColor: const Color.fromARGB(255, 49, 162, 255),
                      onPressed: () => calculatorCtrl.calculateSqrt(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: 'lg',
                      bgColor: Colors.blue,
                      onPressed: () => calculatorCtrl.calculateLog(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      // boton para el elevado al cuadrado
                      text: 'X²',
                      bgColor: const Color.fromARGB(255, 73, 91, 251),
                      onPressed: () => calculatorCtrl.addPi(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
