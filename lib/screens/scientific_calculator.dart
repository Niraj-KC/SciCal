import 'package:calculator/Widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
    else if (value == "="){
      // if (Calculation.input.isNotEmpty) {
      //   var userInput = Calculation.input;
      //   userInput = userInput.replaceAll("x", "*");
      //
      //   Parser p = Parser();
      //
      //   // Parse the expression
      //   Expression exp = p.parse(userInput);
      //
      //   // Create a context containing any variables and functions used in the expression
      //   ContextModel cm = ContextModel();
      //
      //   // Evaluate the expression
      //   Calculation.output = exp.evaluate(EvaluationType.REAL, cm).toString();
      // }
    }
    else{
      Calculation.input += value;
    }

    });
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
                    child: Text("${Calculation.input}",
                      style: TextStyle(color: Colors.white, fontSize: 45),),
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
                InkWell(

                  onTap: (){callback("<");},
                  child: const Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Icon(
                      Icons.backspace_outlined,
                      color: Colors.yellowAccent,
                      size: 25,
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
