import 'package:calculator/screens/converter_screen.dart';
import 'package:calculator/screens/simple_calculator.dart';
import 'package:calculator/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black, 

      ),
      // initialRoute: MyRoutes.converter,
      routes: {
        MyRoutes.home : (context) => SimpleCalculator(),
        MyRoutes.converter : (context) => ConverterScreen(),
      },
    );
  }
}
