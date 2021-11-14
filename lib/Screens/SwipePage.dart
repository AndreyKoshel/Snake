import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snake/Screens/AuthorizationPage.dart';
import 'package:snake/Screens/HomePage.dart';
import 'package:snake/Services/MyUser.dart';


class SwipePage extends StatelessWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyUser? user = Provider.of<MyUser?>(context);
    final bool isLoggetIn = user !=null;
    return isLoggetIn ? HomePage() : AuthorizationPage();
  }
}