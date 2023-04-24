import 'package:calculator/Widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:math' as math;

import '../reusable_widgets/keyboard.dart';
import '../reusable_widgets/sci_keyboard.dart';
import '../reusable_widgets/sci_keyboard2.dart';
import '../utils/calculation.dart';

class ScientificCalculator extends StatefulWidget {
  const ScientificCalculator({Key? key}) : super(key: key);

  @override
  State<ScientificCalculator> createState() => _ScientificCalculatorState();
}

class _ScientificCalculatorState extends State<ScientificCalculator> {

  bool _buttonPressed = false;
  bool _loopActive = false;
  final pi = Variable('π');
  final double e = math.e;

  String reFormat(String expression){
    return expression
        .replaceAll("x", "*")
        .replaceAll("sin⁻¹", "arcsin")
        .replaceAll("cos⁻¹", "arccos")
        .replaceAll("tan⁻¹", "arctan")
        .replaceAll("sinh⁻¹", "arcsinh")
        .replaceAll("cosh⁻¹", "arccosh")
        .replaceAll("tanh⁻¹", "arctanh")
        .replaceAllMapped(
        RegExp(r'√(\w+[(]\d+[)]?|\d+|π|[(][a-z\d+\-*/]*[)])'),
            (match) {
          // print(match.groupCount);
          // print(match.groups([1]));
          return "sqrt(${match.group(1)})";
        })
        .replaceAll("√", "sqrt");
  }

  void callback(String value) {
    setState(() {if (value == "AC"){
      Calculation.input = "";
      Calculation.output = "";
    }
    else if (value == "<"){
      if (Calculation.input.isNotEmpty){
        Calculation.input = Calculation.input.substring(0, Calculation.input.length-1);
      }
    }
    else if(value == "n²"){
      Calculation.input += "^2";
    }
    else if(value == "n³"){
      Calculation.input += "^3";
    }
    else if(value == "n!"){
      Calculation.input += "!";
    }
    else if(value == "xʸ"){
      Calculation.input += "^";
    }
    else if(value == "1/x"){
      Calculation.input += "^-1";
    }
    else if(value == "eˣ"){
      Calculation.input += "e^";
    }
    else if(value == "e"){
      Calculation.input += "e^1";
    }
    else if(value == "|x|"){
      Calculation.input += "|";
    }
    else if(value == "10ˣ"){
      Calculation.input += "10^";
    }
    else if(value == "2ˣ"){
      Calculation.input += "2^";
    }

    else if(RegExp(r'\w{2,}').hasMatch(value)){
      Calculation.input += value + "(";
    }
    else if (value == "="){
      try {
        if (Calculation.input.isNotEmpty) {
          var userInput = Calculation.input;
          userInput = reFormat(userInput);

          Parser p = Parser();

          // Parse the expression
          Expression exp = p.parse(userInput);

          // Create a context containing any variables and functions used in the expression
          ContextModel cm = ContextModel();
          cm.bindVariable(pi, Number(3.141592653589793));
          cm.bindVariable(Variable("e"), Number(2.718281828459045));
          // Evaluate the expression
          Calculation.output = exp.evaluate(EvaluationType.REAL, cm).toString();
          print(Calculation.output);
        }
      }
      catch (e){
        print(e);
        print(Calculation.output);
        Calculation.output = "Error";
      }


    }
    else{
      Calculation.input += value;
    }

    });

    //callback("=");

  }

  void _pressBackSpace() async {
    // make sure that only one loop is active
    if (_loopActive) return;

    _loopActive = true;

    while (_buttonPressed) {
      // do your thing
      callback("<");

      // wait a bit
      await Future.delayed(Duration(milliseconds: 150));
    }
    _loopActive = false;
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Scientific Calculator"),
        ),
        drawer: AppDrawer(),

        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              height: MediaQuery.of(context).size.height*20/100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      child: Text("${Calculation.input}",
                        style: TextStyle(color: Colors.white, fontSize: 45),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text("${Calculation.output}",
                      style: TextStyle(color: Colors.white, fontSize: 30),),
                  ),

                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Listener(
                  onPointerDown: (details){_buttonPressed = true; _pressBackSpace();},
                  onPointerUp: (details){_buttonPressed = false; _pressBackSpace();},
                  child: const InkWell(

                    child: Padding(
                      padding: EdgeInsets.only(right: 18.0),
                      child: Icon(
                        Icons.backspace_outlined,
                        color: Colors.yellowAccent,
                        size: 25,
                      ),
                    ),
                  ),
                ),

                const Divider(color: Colors.grey,) ,
              ],
            ) ,

            Keyboard(
              callback: callback,
            ),
            Container(
              color: Colors.black,
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      // enableDrag: true,
                      isScrollControlled: true,
                      builder: (context) {
                        return SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height*70/100,
                            // color: Colors.red,
                            child: DefaultTabController(
                              length: 2,
                              child: Scaffold(
                                body: Column(
                                  children: [
                                    const TabBar(
                                        tabs: [
                                          Tab(
                                            text: "1st",
                                          ),
                                          Tab(
                                            text: "2nd",
                                          )
                                        ]
                                    ),

                                    Expanded(
                                      child: TabBarView(
                                          children: [
                                            ScientificKeyboard(callback: callback,),
                                            ScientificKeyboard2(callback: callback,),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: const Icon(
                  Icons.keyboard_arrow_up_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
