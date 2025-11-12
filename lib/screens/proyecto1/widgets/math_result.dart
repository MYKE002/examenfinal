import 'package:examenfinal/screens/proyecto1/controladores/calcu_controladores.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sub_result.dart';
import 'line_separator.dart';
import 'main_result.dart';

class MathResult extends StatelessWidget {
  const MathResult({super.key});

  @override
  Widget build(BuildContext context) {
    final calculatorCtrl = Get.find<CalcuControladores>();
    return Obx(() {
      final first = calculatorCtrl.firstNumber.value;
      final op = calculatorCtrl.operation.value;
      final second = calculatorCtrl.secondNumber.value;
      final special = calculatorCtrl.specialOperation.value;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (special.isNotEmpty)
            SubResult(text: special)
          else if (first != '0' || op != '0')
            SubResult(text: '$first $op $second'),
          LineSeparator(),
          MainResultText(text: '${calculatorCtrl.mathResult}'),
        ],
      );
    });
  }
}
