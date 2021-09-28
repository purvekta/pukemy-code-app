import 'package:flutter/material.dart';
import 'package:pukemy01/loginpage.dart';
import 'package:pukemy01/screens/homepage.dart';
//import './screens/homepage.dart';
//import './screens/loginscreen.dart';
//import './screens/registerscreen.dart';
import './loginpage.dart';
import './signup.dart';
import './screens/course_detail_page.dart';
import './screens/unit.dart';
import './video_player_chiew.dart';
import './screens/homepage_updated.dart';



void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
 @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
     // home: RegisterScreen(),
     routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignupPage()
      },
     // home: LoginPage(),
      //home: HomePage(),
        home: MyHomePage(),
      //  home: CourseSyllabus(),    
    //home: Unit(),
    //home: ChewieDemo(),
    );

  } 
}
 