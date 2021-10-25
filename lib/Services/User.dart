import 'package:firebase_auth/firebase_auth.dart';

class MyUser{
 String? id;
  MyUser.FromFirebase(User user){
    id = user.uid;
  }
}