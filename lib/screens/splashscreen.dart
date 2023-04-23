import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 7), () {
      Navigator.pushNamed(context, MyRoutes.simpleCal);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/splash_screen_image.jpg'),
            ),
            const Text(
              "Calculation easy",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 500.0,
              child: TextLiquidFill(
                text: 'Team Niharsh',
                waveColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 200.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 218.0),
              child: Text(
                "Please Wait...",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
