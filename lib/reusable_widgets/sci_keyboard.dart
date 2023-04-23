import 'package:flutter/material.dart';

import 'circular_btn.dart';

class scientific_keyboard extends StatelessWidget {
  const scientific_keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 510,
      child: Expanded(
        child: Container(
          // height: MediaQuery.of(context).size.height*70/100,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 10,) ,
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CircularBtn(disp: Icons.swap_horiz_outlined,onTap: (){},color: Colors.black,colordisp: Colors.orangeAccent,isIcon: true,)),
                    // SizedBox(width: 15,) ,
                    Expanded(child: CircularBtn(disp: "Rad",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),
                    // SizedBox(width: 15,) ,
                    Expanded(child: CircularBtn(disp: "√",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),
                    // SizedBox(width: 15,) ,
                    Expanded(child: CircularBtn(disp: "sin",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),
                  ],
                ),
              ),
              // SizedBox(height: 10,) ,
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CircularBtn(disp: "cos",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "tan",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "ln",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "log",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),
                  ],
                ),
              ),
              // SizedBox(height: 10,) ,

              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CircularBtn(disp: "1/x",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "eˣ",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "n²",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "xʸ",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),
                  ],
                ),
              ),
              // SizedBox(height: 10,) ,
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CircularBtn(disp: "|x|",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "π",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "e",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "sin⁻¹",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),
                  ],
                ),
              ),
              // SizedBox(height: 10,) ,
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CircularBtn(disp: "cos⁻¹",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "tan⁻¹",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp:"sinh",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "cosh",onTap: (){},color: Colors.black,colordisp: Colors.grey,textsize: 30,)),
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
