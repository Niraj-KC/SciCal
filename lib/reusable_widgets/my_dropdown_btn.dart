import 'package:flutter/material.dart';

class MyDropDownMenu extends StatefulWidget {
  final itemList;
  
  MyDropDownMenu({
  required this.itemList,
    Key? key}) : super(key: key);

  @override
  State<MyDropDownMenu> createState() => _MyDropDownMenuState();
}

class _MyDropDownMenuState extends State<MyDropDownMenu> {

  List<String>? itemList;
  String? value;
  @override
  void initState() {
    super.initState();
    itemList = widget.itemList;
    value = itemList?[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*30/100,
      child: DropdownButton<String>(
        isExpanded: true,
        value: value,
        items: itemList?.map(buildMenuItem).toList(),
        onChanged: (value) =>
            setState(() {
              this.value = value;
            }),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => 
      DropdownMenuItem(value: item, child: Text("$item"));
}
