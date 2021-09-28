//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './course_detail_page.dart';
import '../models/getcourseinformation.dart';

class PopularCourses extends StatelessWidget {
   String courseName ;
   int courseId;
  PopularCourses({this.courseName,this.courseId});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        
        Row(
          children: <Widget>[
            Container(
                height: 30,
                width: 200,
                color: Colors.yellow[600],
                child: Text('Popular Courses')),
                
                Container(
                  padding: EdgeInsets.only(left: 40),
                height: 30,
                width: 150,
                color: Colors.yellow[600],
                child: Text('view all')),
          ],
        ),
        SizedBox(
          width: 400.0,
          height: 250.0,
          child: FutureBuilder(
              // Text('Normal'),

              future: fetchPopularCourses(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      Map wpPopularCourses = snapshot.data[index];
                      //courseName= wpPopularCourses.toString(); 
                      
                      var imageUrl = wpPopularCourses['data']['featured_image'];
                      return GestureDetector(
                        onTap: (){
                          courseName= wpPopularCourses['data']['name'];
                          //print(courseName);

                          courseId =  wpPopularCourses['data']['id'];
                         //print(courseId);
                         // Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>CourseSyllabus(courseName:courseName,courseId:courseId)),);
                         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>GetCourseData(courseName:courseName,courseId:courseId)),);
                        },
                        
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                imageUrl,
                                width: 200,
                                height: 200,
                              ),
                              Flexible(
                                flex: 3,
                                child: Text(
                                  // 'ramesh',
                                  wpPopularCourses['data']['name'],
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.cyan,
                                  ),
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
                              //Text(parse(wppost['excerpt'].toString()).documentElement.text),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
                return Center(child: CircularProgressIndicator());
              }),
        ),
        Container(
            height: 30,
            width: 400,
            color: Colors.green[600],
            child: Text(
              'Courses Categories',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            )
            ),
            Row(
          children: <Widget>[
            
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: Text('Mech'),
              ),
              label: Text('Mechanical Enginneering'),
            ),
            
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: Text('EC'),
              ),
              label: Text('EC Engineering'),
            ),
                     ],
        )
      ],
    );
  }
}

final popularCousesUrl =
    'http://www.pukemy.com/wp-json/wplms/v1/course/popular/';
Future<List> fetchPopularCourses() async {
  final popularCourses =
      await http.get(popularCousesUrl, headers: {"accept": "application/json"});
  var conversionDatajson = jsonDecode(popularCourses.body);
  //print(conversionDatajson);
  return conversionDatajson;
}
