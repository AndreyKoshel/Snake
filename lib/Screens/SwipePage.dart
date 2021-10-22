import 'package:flutter/material.dart';
import 'package:snake/Screens/AuthorizationPage.dart';
import 'package:snake/Screens/HomePage.dart';


class SwipePage extends StatelessWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLoggetIn = false;
    return isLoggetIn ? HomePage() : AuthorizationPage();
  }
}