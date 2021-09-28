/*
ignor all code for registation screen
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
//              headerSection(),
              textSection(),
  //            signinButtonSection(),
              registerButtonSection(),
             backtoLoginButtonSection(),
            ],
          )),
    );
  }
}

Container textSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    margin: EdgeInsets.only(top: 30.0),
    child: Column(
      children: <Widget>[
        txtEmail('Name', Icons.person_pin_circle),
        SizedBox(height: 30.0),
        txtPassWord('username', Icons.lock),
        SizedBox(height: 30.0),
        txtEmail('Email', Icons.mail),
        SizedBox(height: 30.0),
        txtPassWord('Password', Icons.lock),
        SizedBox(height: 30.0),
        
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


TextEditingController emailController =TextEditingController();
TextEditingController passwordContoller =TextEditingController(); 


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


Container registerButtonSection(){
  
  return Container(
    //width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(top: 30.0),
    height: 40,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: OutlineButton(
      onPressed: () {},
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


Container backtoLoginButtonSection(){
  return Container(
    //width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(top: 30.0),
    height: 20,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: OutlineButton(
      onPressed: () {
         //Navigator.of().pop();
      },
      //color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(
        'Back to Login',
        style: TextStyle(
          //color: Colors.white70,
        ),
      ),
    ),
  );
}
*/