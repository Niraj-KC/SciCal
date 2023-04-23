import 'package:calculator/reusable_widgets/keyboard_convert.dart';
import 'package:calculator/reusable_widgets/my_dropdown_btn.dart';
import 'package:calculator/utils/calculation.dart';
import 'package:flutter/material.dart';

import '../Widgets/drawer.dart';
import '../reusable_widgets/circular_btn.dart';
import '../reusable_widgets/keyboard.dart';

class ConverterScreen extends StatefulWidget {
  ConverterScreen({Key? key}) : super(key: key);

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {

  callback(String value){
    setState(() {
      Calculation.input += value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Converter"),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      drawer: AppDrawer(),

      body: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical:10, horizontal: 20 ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*25/100,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        MyDropDownMenu(itemList: ["itemList"]),
                        SizedBox(width: 20,),
                        const SizedBox(
                          width: 150,
                          child: TextField(
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),)
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        MyDropDownMenu(itemList: ["itemList"]),
                        SizedBox(width: 20,),
                        const SizedBox(
                          width: 150,
                          child: TextField(
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide())
                            ),
                          ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(

                  onTap: (){},
                  child: const Icon(
                    Icons.backspace_outlined,
                    color: Colors.yellowAccent,
                  ),
                ),

                const Divider(color: Colors.grey,) ,
              ],
            ),

            KeyboardConvert(callback: callback,),
          ],
        ),
      )

    );
  }
}
