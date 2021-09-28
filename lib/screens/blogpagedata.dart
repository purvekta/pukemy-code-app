import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BlogPageData extends StatelessWidget {
  final String blogPageName;
  
  BlogPageData({@required this.blogPageName});
  //debugprint(CourseSyllabus.courseName)
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(blogPageName),
          
        ),
        
        body: Column(
          children: <Widget>[
            Text('Hello Brother')
          ],
        )
        );
        
  }
}
