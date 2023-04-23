import 'package:calculator/utils/calculation.dart';
import 'package:flutter/material.dart' ;
import '../Widgets/drawer.dart';
import '../reusable_widgets/keyboard.dart';
import 'package:math_expressions/math_expressions.dart';

//import 'scientific_calculator.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {

  callback(String value){
    // print("object");
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
      if (Calculation.input.isNotEmpty) {
        var userInput = Calculation.input;
        userInput = userInput.replaceAll("x", "*");

        Parser p = Parser();

        // Parse the expression
        Expression exp = p.parse(userInput);

        // Create a context containing any variables and functions used in the expression
        ContextModel cm = ContextModel();

        // Evaluate the expression
        Calculation.output = exp.evaluate(EvaluationType.REAL, cm).toString();
      }
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
           backgroundColor: Colors.black45,
        ),
        drawer: AppDrawer(),

        body:Column(
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

            Keyboard(callback: callback,),
          ],
        ),

        ),
        );
  }
}

