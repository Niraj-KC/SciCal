import 'package:calculator/utils/calculation.dart';
import 'package:calculator/utils/routes.dart';
import 'package:flutter/material.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                  child: Container(
                    color: Colors.red,
                  )
              ) ,
              InkWell(
                child: const ListTile(
                  title: Text("Standard Calculator",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){
                  Calculation.convert = "";
                  Calculation.input = "";
                  Calculation.output = "";
                  Navigator.of(context, rootNavigator: true).pushNamed(MyRoutes.simpleCal);
                },
              ) ,
              const Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Scientific Calculator",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){
                  Calculation.convert = "";
                  Calculation.input = "";
                  Calculation.output = "";
                  Navigator.of(context, rootNavigator: true).pushNamed(MyRoutes.scientificCal);
                },
              ) ,
              const Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Length Converter",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){
                  Calculation.convert = "length";
                  Navigator.of(context, rootNavigator: true).pushNamed(MyRoutes.converter);
                },
              ) ,
              Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Temperature Converter",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){},
              ) ,
              Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Volume Converter",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){},
              ) ,
              Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Mass Converter",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){},
              ) ,
              Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Data Converter",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){},
              ) ,
              const Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Speed Converter",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){},
              ) ,
              const Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Time Converter",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){},
              ) ,
              const Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Area Converter",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){},
              ) ,
              const Divider(color: Colors.grey,) ,
              InkWell(
                child: const ListTile(
                  title: Text("Currency Converter",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onTap: (){},
              ) ,
              const Divider(color: Colors.grey,) ,
            ],
          ),
        ),
      ),
    );
  }
}
