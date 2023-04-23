import 'package:flutter/material.dart';
import 'circular_btn.dart';

class ScientificKeyboard extends StatefulWidget {
  final void Function(String) callback;

  const ScientificKeyboard({
    required this.callback,
    Key? key}) : super(key: key);

  @override
  State<ScientificKeyboard> createState() => _ScientificKeyboardState();
}

class _ScientificKeyboardState extends State<ScientificKeyboard> {
  bool changebtn = true ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height*90/100,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 10,) ,
            Expanded(
              child: Row(
                children: [
             Expanded(child: CircularBtn(disp: "Rad",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
                  // SizedBox(width: 15,) ,
                  Expanded(child: CircularBtn(disp: "√",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
                  // SizedBox(width: 15,) ,
                  Expanded(child: CircularBtn(disp: "sin",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
                ],
              ),
            ),
            // SizedBox(height: 10,) ,
            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "cos",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                  Expanded(child: CircularBtn(disp: "tan",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                  Expanded(child: CircularBtn(disp: "ln",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                  Expanded(child: CircularBtn(disp: "log",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
                ],
              ),
            ),
            // SizedBox(height: 10,) ,

            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "1/x",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                  Expanded(child: CircularBtn(disp: "eˣ",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                  Expanded(child: CircularBtn(disp: "n²",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                  Expanded(child: CircularBtn(disp: "xʸ",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
                ],
              ),
            ),
            // SizedBox(height: 10,) ,
            Expanded(
              child: Row(
                children: [
                  Expanded(child: CircularBtn(disp: "|x|",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                  Expanded(child: CircularBtn(disp: "π",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                  Expanded(child: CircularBtn(disp: "e",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),

                  Expanded(child: CircularBtn(disp: "sin⁻¹",onTap: widget.callback,color: Colors.black,bgcolor: Colors.grey,textsize: 30,)),
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
    );
  }
}
