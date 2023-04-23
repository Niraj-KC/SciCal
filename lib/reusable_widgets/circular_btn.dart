import 'package:calculator/utils/calculation.dart';
import 'package:flutter/material.dart';

class CircularBtn extends StatelessWidget {
  final disp;
  final void Function(String) onTap;
  bool isIcon;
  Color color ;
  Color bgcolor ;
  double textsize;

  CircularBtn({
    required this.disp,
    required this.onTap,
    required this.bgcolor,
    this.isIcon = false,
    this.color  = Colors.black,
    this.textsize = 36,
    Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
      return InkWell(
        onTap: () {onTap(disp);},
        child: CircleAvatar(
          backgroundColor: bgcolor,
          radius: MediaQuery.of(context).size.width*10/100 ,
          child: isIcon
          ?Icon(
            disp,
            color: color ,
          )
          :Text(disp,style: TextStyle(fontSize: textsize, color:color),),

        ),
      )
    ;}
}
