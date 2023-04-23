import 'package:calculator/utils/calculation.dart';
import 'package:flutter/material.dart';

class CircularBtn extends StatelessWidget {
  final disp;
  final void Function(String) onTap;
  bool isIcon;
  Color color ;
  Color colordisp ;

  CircularBtn({
    required this.disp,
    required this.onTap,
    required this.colordisp,
    this.isIcon = false,
    this.color  = Colors.black,

    Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
      return InkWell(
        onTap: () {onTap(disp);},
        child: CircleAvatar(
          backgroundColor: colordisp,
          radius: MediaQuery.of(context).size.width*10/100,
          child: isIcon
          ?Icon(
            disp,
            color: color ,
          )
          :Text(disp,style: TextStyle(fontSize: 36,color:color),),

        ),
      )
    ;}
}
