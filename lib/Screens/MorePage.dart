import 'package:flutter/material.dart';
import 'package:snake/Services/Authorization.dart';

class MorePage extends StatefulWidget {
  const MorePage({ Key? key }) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Hello!');
            Authorization().LogOut();
          },
          child: Icon(Icons.add_circle_outline)
      ),
    );
  }
}