import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snake/Screens/RootPage.dart';
import 'package:snake/Services/Authorization.dart';
import 'package:snake/Services/MyUser.dart';
import 'Screens/HomePage.dart';
import 'Screens/SlpashScreen.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      value: Authorization().Current,
      initialData: null,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData( primarySwatch: Colors.indigo),
          
    
          home: SplashScreen()
      ),
    );


  }

}




