import 'dart:async';
import 'package:flutter/material.dart';
import 'SwipePage.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SwipePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: 
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage('assets/images/Snake.png') ) 
          ),
        )
        //child: Image.asset('assets/images/Snake.png'),
      ),
    );
  }
}