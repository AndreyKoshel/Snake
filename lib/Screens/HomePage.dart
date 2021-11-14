import 'package:flutter/material.dart';
import 'package:snake/Services/Authorization.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snake',
        style: TextStyle(fontFamily: 'Oswald'
        ),
      ),
        centerTitle: true,
      ),
      body:
      Column(
          children: [
            Image(
              image: AssetImage('assets/images/Frieda.jpg'),
            ),

          ]
       ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Authorization().LogOut();
          },
          child: Icon(Icons.add_circle_outline)
      ),
    );
  }
}