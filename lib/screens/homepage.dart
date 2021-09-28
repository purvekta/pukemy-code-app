import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './blogpage.dart';
import './allcourse.dart';
import './popularcourses.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pukemy'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: () {}),
        ],
      ),
      drawer: SizedBox(
        width: 210,
        child: Drawer(
            elevation: 5,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Profile Page'),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('My Profile'),
                  leading: Icon(Icons.person_pin_circle),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('My Course'),
                  leading: Icon(Icons.golf_course),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('All Courses'),
                  leading: Icon(MdiIcons.accountDetails),
                  onTap: () {
                   
                    //Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllCoursesPage()),
                      
                    );
                    print('blog');
                   // Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Notifications'),
                  leading: Icon(Icons.notification_important),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Blog'),
                  leading: Icon(MdiIcons.blogger),
                  onTap: () {
                    //Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BlogPage()),
                      
                    );
                    print('blog');
                  },
                ),
                ListTile(
                  title: Text('About us'),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Sign Out'),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            ),
      ),
      //resizeToAvoidBottomPadding: false,
      //resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            child: PopularCourses(),
          ),
        ],
      ),
    );
  }
}

