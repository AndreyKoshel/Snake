import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:snake/Services/Authorization.dart';
import 'package:snake/Services/MyUser.dart';

class AuthorizationPage extends StatefulWidget {

  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  _AuthorizationPageState createState() => _AuthorizationPageState();

}

class _AuthorizationPageState extends State<AuthorizationPage> {
  TextEditingController emailConroller = TextEditingController();
  TextEditingController passwordConroller = TextEditingController();
  late String email;
  late String password;
  bool showLogin = true;
  Authorization authorization = Authorization();

  @override
  Widget build(BuildContext context) {
    Widget _logo(){
      return Padding(
        padding: EdgeInsets.only(top: 100),
        child: Container(
          child: Align(
            child: Text('Snake',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Oswald'
                )
            ),
          ),
        ),
      );
    }
    Widget _input(
        Icon icon, String hint, TextEditingController controller, bool obscure
        )
    {
      return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: controller,
          obscureText: obscure,
          style: TextStyle(fontSize: 20, color: Colors.white),
          decoration: InputDecoration(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color:Colors.white30),
            hintText: hint,
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 5)
            ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white38, width: 1)
              ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: IconTheme(
                data:IconThemeData(color: Colors.white),
                child: icon,
              ),
            )
          ),
        ),
      );
    }
    Widget _button(String text, void func() ){
      return RaisedButton(
        onPressed: (){
          func();
        },
        splashColor: Theme.of(context).primaryColor,
        highlightColor: Theme.of(context).primaryColor,
        color: Colors.white,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor, fontSize: 20)
        ),
      );
    }
    Widget _forms(String label, void func() ){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(bottom: 20, top: 10),
              child: _input(Icon(Icons.email), 'EMAIL', emailConroller, false ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _input(Icon(Icons.lock), 'PASSWORD', passwordConroller, true),
            ),
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                child: _button(label,func),

              ),
            )

          ],
        ),
      );
    }
    void Login() async{
      email = emailConroller.text;
      password = passwordConroller.text;
      if(email.isEmpty || password.isEmpty) return;
      MyUser? user = await authorization.SignIn(email.trim(), password.trim());
      if(user == null){
        Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
      }else{
      emailConroller.clear();
      passwordConroller.clear();
      }     
    }
     void Registration() async{
      email = emailConroller.text;
      password = passwordConroller.text;
      if(email.isEmpty || password.isEmpty) return;
      MyUser? user = await authorization.Register(email.trim(), password.trim());
      if(user == null){
        Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
      }else{
      emailConroller.clear();
      passwordConroller.clear();
      }     
    }
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          _logo(),
          (   showLogin
              ? Column(
                children: <Widget>[

                  _forms('Registration', Registration),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      child: Text('Ещё не зарегистрировались? Зарегистрирутейсь;)',
                      style: TextStyle(fontSize: 20, color:Colors.white,fontFamily: 'Oswald'),
                      ),
                      onTap:(){
                        setState((){
                          showLogin = false;
                    });
                    }),
                  ),

                ],
              )
          : Column(
            children: <Widget>[
              _forms('Login', Login),
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  child: Align(
                    child: Text('Уже зарегистрировались? Залогинтесь;)',
                      style: TextStyle(fontSize: 20, color:Colors.white,fontFamily: 'Oswald'),
                    ),
                  ),
                  onTap:(){
                    setState((){
                      showLogin = true;
                    });
                  },
                ),
              ),
            ],
          )
          )
        ],
      ),
    );
  }
}
