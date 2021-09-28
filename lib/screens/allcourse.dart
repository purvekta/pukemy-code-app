//import 'package:flutter/material.dart';

//mport 'dart';

import 'package:flutter/material.dart';
//import '../models/wp-api.dart';
//import 'package:html/dom.dart';
//import 'package:html/dom_parsing.dart';
//import 'package:html/parser.dart';
//import 'package:http/http.dart as http';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AllCoursesPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Courses"),
      ),
      body: Container(
        child: FutureBuilder(
            future: fetchWpPosts1(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map wpCourse = snapshot.data[index];
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            wpCourse['name'],
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                            ),
                          ),
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
                          //Text(parse(wpCourse['excerpt'].toString()).documentElement.text),
                        ],
                      ),
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}

final allCoursePageUrl = 'https://www.pukemy.com/wp-json/wplms/v1/course/taxonomy/?taxonomy=course-cat';
Future<List> fetchWpPosts1() async {
  final allCourseResponse = await http.get(
      allCoursePageUrl,
      headers: {"accept": "application/json"});
      var conversionDatajson = jsonDecode(allCourseResponse.body);
      print(conversionDatajson);
      return conversionDatajson;
}