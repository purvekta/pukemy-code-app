import 'package:flutter/material.dart';

//import 'package:html/dom.dart';
//import 'package:html/dom_parsing.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/courseinfosection.dart';
import '../models/section_expansion.dart';

class GetCourseData extends StatelessWidget {
  final int courseId;
  final String courseName;
  String updatedCourseName;
  GetCourseData({@required this.courseId, @required this.courseName});

  static const siteUrl = 'https://www.pukemy.com/wp-json/wplms/v1/course/';
  static const headers = {
    "accept": "application/json",
  };
  Future<List> fetchCourseDetails(int courseId) async {
    // return http.get(siteUrl+courseId.toString(),headers:headers).then((data)
    return http
        .get(siteUrl + courseId.toString(), headers: headers)
        .then((data) {
      if (data.statusCode == 200) {
        final coursejsonData = json.decode(data.body);
        print(coursejsonData);
        return coursejsonData;
      }
      print('text');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(courseName),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Container(
            
            child: FutureBuilder(
              future: fetchCourseDetails(courseId),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      Map WpCourseContent = snapshot.data[index];

                      var courseImageUrl =
                          WpCourseContent['data']['course']['featured_image'];
                      return Card(
                        child: Column(
                          children: <Widget>[
                            Image.network(courseImageUrl,
                            width: 300,
                            height: 200,),
                            Rowbutton(),
                            Text(parse(WpCourseContent['data']['description']
                                    .toString())
                                .documentElement
                                .text),
                            Text(WpCourseContent['data']['course']['name']),
                            CourseInfo(),
                            SectionExpansion(),
                            // Text(WpCourseContent['data']['description']
                            //     .toString()),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Rowbutton(),
                            ),
                            Card(
                    //:
                    color: Colors.white,
                    //shape: s,
                    child: Text(
                      'Offer Price= 12500.00',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  //ExpansionPanel(headerBuilder: null, body: null)
                  Card(
                    //:
                    color: Colors.white,
                    //shape: s,
                    child: Text(
                      'Sell Price= 10.00',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ));
  }
}

Container Rowbutton() {
  return Container(
    padding: EdgeInsets.only(top: 20),
    child: Row(
      children: <Widget>[
        SizedBox(
          width: 170,
          height: 60,
          child: RaisedButton(
            onPressed: () {},
            color: Colors.red,
            child: Text(
              'ADD TO CART',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(padding: EdgeInsets.only(left: 10)),
        SizedBox(
          width: 170,
          height: 60,
          child: RaisedButton(
            onPressed: () {},
            color: Colors.red,
            child: Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
