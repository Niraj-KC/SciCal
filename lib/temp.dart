// Addition (+)
// Subtraction (-)
// Multiplication (*)
// Division (/)
// Exponentiation (^)
// Square root (√)
// Factorial (!)
// Trigonometric functions: sin, cos, tan, asin, acos, atan
// Hyperbolic functions: sinh, cosh, tanh, asinh, acosh, atanh
// Logarithmic functions: log, ln
// Constants: pi, e
// Some scientific calculators also include additional functions, such as:
//
// Absolute value (|x|)
// Modulo (%)
// Rounding functions: round, floor, ceil
// Exponential function (exp)
// Inverse trigonometric functions: csc, sec, cot, acsc, asec, acot
// Inverse hyperbolic functions: csch, sech, coth, acsch, asech, acoth

import 'package:collection/collection.dart';


String convertToTrigo(String expression) {
  expression = expression
      .replaceAllMapped(
        RegExp(r'(\w+)⁻¹(\d+)|(\w+)⁻¹[(](\d+)[)]'),
          (match)  => 'a${match.group(1)??match.group(3)}(${match.group(2)??match.group(4)})')
      .replaceAllMapped(
        RegExp(r'([a-zA-Z]+)(\d+)'),
            (match) {
              print(match.groupCount);
              print(match.groups([1]));
              return '${match.group(1)}(${match.group(2)})';
              }
      );
  return expression;

  // RegExp alphaRegex = RegExp(r'[a-zA-Z]+');
  // RegExp numRegex = RegExp(r'[0-9]+');
  // String? alphaPart = alphaRegex.stringMatch(expression);
  // String? numPart = numRegex.stringMatch(expression);
  // return [alphaPart, numPart];
}


String convertToSqrt(String expression) {
  //return expression.replaceAll("√", "sqrt");
  return expression
      .replaceAllMapped(
        RegExp(r'√(\d+)|√\((.*?)\)|√(\w*\d*[()+\-*/])[+\-*/]'), 
          (match) {
          print(match.groups([1,2,3]));
            print(match.groupCount);
            return 'sqrt(${match.group(1) ?? match.group(2) ?? match.group(3)})';
          },
  );
}

// String convertToSqrt(String expression) {
//   return expression.replaceAllMapped(
//     RegExp(r'√(\d+)|√\((.*?)\)|√(\w+)'),
//         (match) {
//       if (match.group(1) != null || match.group(2) != null) {
//         return 'sqrt(${match.group(1) ?? match.group(2)})';
//       } else {
//         return 'sqrt(${match.group(3)})';
//       }
//     },
//   ).replaceAllMapped(
//     RegExp(r'(\w+)\(([\d\.]+)\)'),
//         (match) => '${match.group(1)}(sqrt(${match.group(2)}))',
//   );
// }
//

void main() {
  String expression1 = '2 + 2*√(2+5)';
  String expression2 = '√(2 + 2)*2';
  String expression3 = '(2 + 2)*√2';
  String expression4 = '√7';
  String expression5 = '(2 + 2)*√2*cos45';
  String expression6 = '2 + 2*√(2+5)+√sin45';

  String expression7 = '√sin⁻¹(45)+sin(cos⁻¹(√44))-tan⁻¹(42)*√sinh⁻¹(90)/cos⁻¹(cos(√91))*tan(92) * √asin(45) + acos(√44) + atan(42) + √sin(90) + cos(√91*√(acos(2)) + sin(3)) + tan(92) + √7+ √(2+5) + √(acos(2) + sin(3))';

  // expression7 = expression7
  //     .replaceAllMapped(
  //     RegExp(r'(\w+)[(](\d+)[)]|(\w+)[(](√\d+)[)]|(\w+)⁻¹[(](\d+)[)]|(\w+)⁻¹[(](√\d+)[)]'),
  //         (match) {
  //         print(match.groups([1,2,3,4,5,6,7,8]));
  //   return match.groups([1, 2, 3, 4]).equals([null,null,null,null])
  //       ?'a${match.group(5) ?? match.group(7)}(${match.group(6) ?? match.group(8)})'      // trig⁻¹ -> atrig
  //       :'${match.group(1) ?? match.group(3)}(${match.group(2) ?? match.group(4)})';      // trig -> trig
  // });
  //
  expression7 = expression7
  .replaceAll("sin⁻¹", "asin")
  .replaceAll("cos⁻¹", "acos")
  .replaceAll("tan⁻¹", "atan")
  .replaceAll("sinh⁻¹", "asinh")
  .replaceAll("cosh⁻¹", "acosh")
  .replaceAll("tanh⁻¹", "atanh")
  .replaceAllMapped(
      RegExp(r'√(\w+[(]\d+[)]?|\d+|π|[(][a-z\d+\-*/]*[)])'),
          (match) {
        // print(match.groupCount);
        // print(match.groups([1]));
        return "sqrt(${match.group(1)})";
      })
      .replaceAll("√", "sqrt");
  print("object");
  print(expression7);

  // expression7 = "√asin(45) + acos(√44) + atan(42) + √sin(90) + cos(√91*√(acos(2)) + sin(3)) + tan(92) + √7+ √(2+5) + √(acos(2) + sin(3))";
  //
  // expression7 = expression7
  //     .replaceAllMapped(
  //     RegExp(r'√(\w+[(]\d+[)]?|\d+|π|[(][a-z\d+\-*/]*[)])'),
  //         (match) {
  //           print(match.groupCount);
  //           print(match.groups([1]));
  //           return "sqrt(${match.group(1)})";
  //         })
  //     .replaceAll("√", "sqrt");
  //
  //
  print("\n================");
  print(expression7);
  // // print(convertToSqrt(expression7));

  // print("============\n${convertToTrigo(expression7)}\n================");
  // print("============\n${convertToSqrt(convertToTrigo(expression7))}\n================");

  // String modifiedExpression1 = convertToSqrt(expression1);
  // String modifiedExpression2 = convertToSqrt(expression2);
  // String modifiedExpression3 = convertToSqrt(expression3);
  // String modifiedExpression4 = convertToSqrt(expression4);
  // String modifiedExpression5 = convertToSqrt(expression5);
  // String modifiedExpression6 = convertToSqrt(expression6);
  // String modifiedExpression7 = convertToSqrt(expression7);
  //
  // print(modifiedExpression1);
  // print(modifiedExpression2);
  // print(modifiedExpression3);
  // print(modifiedExpression4);
  // print(modifiedExpression5);
  // print(modifiedExpression6);
  // print(modifiedExpression7);
  // print("\n==========================================================\n");
  // print(convertToTrigo(modifiedExpression1));
  // print(convertToTrigo(modifiedExpression2));
  // print(convertToTrigo(modifiedExpression3));
  // print(convertToTrigo(modifiedExpression4));
  // print(convertToTrigo(modifiedExpression5));
  // print(convertToTrigo(modifiedExpression6));
  // print(convertToTrigo(modifiedExpression7));

}
