import 'package:flutter/material.dart';

Container CourseInfo() {
  return Container(
    child: Column(
      children: <Widget>[
        
         
        Card(
          //:
          color: Colors.white,
          //shape: s,
          child: Text('About the Course',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        Card(
          //:
          color: Colors.white,
          //shape: s,
          child: Text(
            'Who can Take Course',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
        ),
        Card(
          //:
          color: Colors.white,
          //shape: s,
          child: Text(
            'This course includes',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
        ),
        
         Card(child: Center(
          child: RichText(text: TextSpan(
            text: 'Create Different Kinds of commercial websites with minimum cost or free of cost.Create Commercial websites like Flip kart Amazon for sell to clients Master the inner working tools of word press for fixing troubleshooting and building websites Expertise in Installing word Press plugin in websites Building skills to setup server and hosting environments in the most economical and secure way.Migrate and transfer word press websites to one domain to another and vice verca',
            style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
          ),
          ),
        ),
        ),    
        Card(
          //:
          color: Colors.white,
          //shape: s,
          child: Text(
            'Course Curriculum',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),  
        
      ],
    ),
  );
  /////////
}
