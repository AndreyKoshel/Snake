import 'package:firebase_auth/firebase_auth.dart';
import 'package:snake/Services/MyUser.dart';

class Authorization{
  final FirebaseAuth Auth = FirebaseAuth.instance;
  Future<MyUser?> SignIn(String email, String password) async{
    try{
        UserCredential result = await Auth.signInWithEmailAndPassword(email: email, password: password);
        User? user = result.user;
        return MyUser.FromFirebase(user!);
    }catch(e){
      print(e);
     return null;
    }
  }
  Future<MyUser?> Register(String email, String password) async{
    try{
        UserCredential result = await Auth.createUserWithEmailAndPassword(email: email, password: password);
        User? user = result.user;
        return MyUser.FromFirebase(user!);
    }catch(e){
      print(e);
     return null;
    }
  }
  Future LogOut() async{
    await Auth.signOut();
  }
  Stream<MyUser?> get Current{
    return Auth.authStateChanges().map((User? user) => user !=null ? MyUser.FromFirebase(user) : null);
  }
}