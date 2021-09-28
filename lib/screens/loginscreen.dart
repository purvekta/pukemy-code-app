/*
ignor all code
import 'package:flutter/material.dart';
import './registerscreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(),

      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            // colors: [Colors.blue, Colors.teal],
            colors: [Colors.deepOrange, Colors.orange],
            begin: Alignment.topCenter,
            end: AlignmentDirectional.bottomCenter,
          )),
          child: ListView(
            children: <Widget>[
              headerSection(),
              textSection(),
              signinButtonSection(),
              registerButtonSection(),
              forgetIdButtonSection(),
            ],
          )),
    );
  }
}

Container headerSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 30.0),
    child: Text(
      'Pukemy',
      style: TextStyle(
        color: Colors.white70,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

Container textSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    margin: EdgeInsets.only(top: 30.0),
    child: Column(
      children: <Widget>[
        txtEmail('Email', Icons.mail),
        SizedBox(height: 30.0),
        txtPassWord('Password', Icons.lock),
      ],
    ),
  );
}

TextFormField txtEmail(String title, IconData icon) {
  return TextFormField(
    controller: emailController,
    style: TextStyle(color: Colors.white70),
    decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(color: Colors.white70),
        icon: Icon(icon)),
  );
}

//// code for the password
///

TextEditingController emailController = TextEditingController();
TextEditingController passwordContoller = TextEditingController();

TextFormField txtPassWord(String title, IconData icon) {
  return TextFormField(
    controller: passwordContoller,
    style: TextStyle(color: Colors.white70),
    decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(color: Colors.white70),
        icon: Icon(icon)),
  );
}
//// end

Container signinButtonSection() {
  return Container(
    //width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(top: 30.0),
    height: 40,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: OutlineButton(
      onPressed: () {},
      //color: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        'Login',
        style: TextStyle(
            //  color: Colors.white70,
            ),
      ),
    ),
  );
}

Container registerButtonSection() {
  //@override
 // Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 30.0),
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
    
      child: OutlineButton(
        onPressed: () {
   //       Navigator.push(
     //       context,
       //     MaterialPageRoute(builder: (context) => RegisterScreen()),
  //        );
          //Navigator.push(
          //context,

          //setState(() =>RegisterScreen()
          //MaterialPageRoute(builder: (context) => RegisterScreen()),
          //);
        },
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          'Register',
          style: TextStyle(
              //color: Colors.white70,
              ),
        ),
      ),
    
    );
  }
//}

Container forgetIdButtonSection() {
  return Container(
    //width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(top: 30.0),
    height: 20,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: OutlineButton(
      onPressed: () {},
      //color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(
        'Forget password',
        style: TextStyle(
            //color: Colors.white70,
            ),
      ),
    ),
  );
}
*/