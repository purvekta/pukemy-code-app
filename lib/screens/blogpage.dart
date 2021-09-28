//import 'package:flutter/material.dart';

//mport 'dart';

import 'package:flutter/material.dart';
import '../models/wp-api.dart';
//import 'package:html/dom.dart';
//import 'package:html/dom_parsing.dart';
import 'package:html/parser.dart';
import './blogpagedata.dart';

class BlogPage extends StatelessWidget {
String blogPageName;
BlogPage({this.blogPageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Posts"),
      ),
      body: Container(
        child: FutureBuilder(
            future: fetchWpPosts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map wppost = snapshot.data[index];
                    return Card(
                      child: GestureDetector(
                        onTap: (){
                          //courseName= wpPopularCourses['data']['name'];
                         blogPageName =wppost['title'];
                         // Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>CourseSyllabus(courseName:courseName)),);
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>BlogPageData(blogPageName:blogPageName)),);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              wppost['title'],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan,
                              ),
                            ),
                            // RaisedButton(onPressed: null)
                            /*
                            Text(
                              wppost['excerpt'],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                                color: Colors.red,
                                
                              ),
                              
                            ),
                            */
                            Text(parse(wppost['excerpt'].toString())
                                .documentElement
                                .text),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
              return Center(child: CircularProgressIndicator(backgroundColor:Colors.green));
            }),
      ),
    );
  }
}
