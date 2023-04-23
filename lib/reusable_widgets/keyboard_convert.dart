import 'package:flutter/material.dart';

import 'circular_btn.dart';


class KeyboardConvert extends StatelessWidget {
  final void Function(String) callback;

  KeyboardConvert({
    required this.callback,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // height: MediaQuery.of(context).size.height*70/100,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "7",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "8",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "9",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                  ],
              ),
            ),


            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "4",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "5",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "6",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),
                ],
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "1",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "2",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "3",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                ],
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: ".",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "0",onTap: callback,color: Colors.black,bgcolor: Colors.grey,)),

                  Expanded(child: CircularBtn(disp:"=",onTap: callback,color: Colors.black,bgcolor: Colors.yellow,)),

                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
