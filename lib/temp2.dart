import 'package:math_expressions/math_expressions.dart';
import 'dart:math';

void main() {
  double x = 0.5;
  Parser p = Parser();
  ContextModel cm = ContextModel();
  cm.bindVariableName("pi", Number(pi));
  cm.bindVariableName("e", Number(2.718281828459045));
  Expression exp = p.parse("ln(e^1)");
  double result = exp.evaluate(EvaluationType.REAL, cm);

  print('asin($x) = $result radians'); // Output: asin(0.5) = 0.5235987755982988 radians
  print('asin($x) = ${result * 180 / pi} degrees'); // Output: asin(0.5) = 30.000000000000004 degrees
}
