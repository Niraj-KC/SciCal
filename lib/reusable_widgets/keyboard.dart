import 'package:flutter/material.dart';

import 'circular_btn.dart';


class Keyboard extends StatelessWidget {
  final void Function(String) callback;

  Keyboard({
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
            // SizedBox(height: 10,) ,
            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "A",onTap: callback,color: Colors.white,colordisp: Colors.orangeAccent,)),
                  // SizedBox(width: 15,) ,
                  Expanded(child: CircularBtn(disp: "(",onTap: callback,color: Colors.white,colordisp: Colors.grey,)),
                  // SizedBox(width: 15,) ,
                  Expanded(child: CircularBtn(disp: ")",onTap: callback,color: Colors.white,colordisp: Colors.grey,)),
                  // SizedBox(width: 15,) ,
                  Expanded(child: CircularBtn(disp: "/",onTap: callback,color: Colors.white,colordisp: Colors.grey,)),
                ],
              ),
            ),
            // SizedBox(height: 10,) ,
            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "7",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "8",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "9",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "x",onTap: callback,color: Colors.white,colordisp: Colors.grey,)),
                ],
              ),
            ),
            // SizedBox(height: 10,) ,

            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "4",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "5",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "6",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "-",onTap: callback,color: Colors.white,colordisp: Colors.grey,)),
                ],
              ),
            ),
            // SizedBox(height: 10,) ,
            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "1",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "2",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "3",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "+",onTap: callback,color: Colors.white,colordisp: Colors.grey,)),
                ],
              ),
            ),
            // SizedBox(height: 10,) ,
            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "%",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "0",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp:".",onTap: callback,color: Colors.black,colordisp: Colors.grey,)),

                  Expanded(child: CircularBtn(disp: "=",onTap: callback,color: Colors.black,colordisp: Colors.yellow,)),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
