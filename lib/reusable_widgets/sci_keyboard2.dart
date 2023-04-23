import 'package:flutter/material.dart';

import 'circular_btn.dart';

class ScientificKeyboard2 extends StatefulWidget {
  final void Function(String) callback;

  const ScientificKeyboard2({
  required this.callback,
  Key? key}) : super(key: key);

  @override
  State<ScientificKeyboard2> createState() => _ScientificKeyboard2State();
}

class _ScientificKeyboard2State extends State<ScientificKeyboard2> {
  bool changebtn = false ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height*85/100,
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
                    // Expanded(child: CircularBtn(disp: Icons.swap_horiz_outlined,onTap: (){
                    //   setState(() {
                    //   changebtn = !changebtn ;
                    //   if(changebtn)
                    //   {
                    //     scientific_keyboard() ;
                    //   }
                    //   else
                    //   {
                    //     scientific_keyboard2() ;
                    //   }
                    // });},color: Colors.black,colordisp: Colors.orangeAccent,isIcon: true,)),

                    Expanded(child: CircularBtn(disp: "nPr",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "nCr",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "x⁻¹",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
                  ],
                ),
              ),
              // SizedBox(height: 10,) ,
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CircularBtn(disp: "tanh",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "2ˣ",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "sinh⁻¹",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "cosh⁻¹",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
                  ],
                ),
              ),
              // SizedBox(height: 10,) ,

              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CircularBtn(disp: "tanh⁻¹",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "2ˣ",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "n³",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "n!",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
                  ],
                ),
              ),
              // SizedBox(height: 10,) ,
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CircularBtn(disp: "10ˣ",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "π",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "Rec(",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "Pol(",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
                  ],
                ),
              ),
              // SizedBox(height: 10,) ,
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CircularBtn(disp: "cos⁻¹",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "tan⁻¹",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp:"sinh",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                    Expanded(child: CircularBtn(disp: "cosh",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
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
