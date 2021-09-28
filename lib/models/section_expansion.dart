import 'package:flutter/material.dart';

Container SectionExpansion() {
  return Container(
    child: Column(children: <Widget>[
      ExpansionTile(
          //leading: Icon.,
          title: Text('Introduction to the Course '),
          children: <Widget>[
            OutlineButton(
              onPressed: () {},
              child: Text('Introduction to the Course '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('What is Flutter?'),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('Why Flutter? '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('The Anatomy of a Flutter App '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('How to Watch the Course in High Definition '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('How to Get the Most Out of the Course  '),
            ),
          ]
          ),
      ExpansionTile(
        title: Text(
          'Setup and Installation '
          ), 
        children: <Widget>[
        OutlineButton(
          onPressed: () {},
          child: Text('Introduction to the Course '),
        ),
        OutlineButton(
          onPressed: () {},
          child: Text('What is Flutter?'),
        ),
        OutlineButton(
          onPressed: () {},
          child: Text('Why Flutter? '),
        ),
        OutlineButton(
          onPressed: () {},
          child: Text('The Anatomy of a Flutter App '),
        ),
        OutlineButton(
          onPressed: () {},
          child: Text('How to Watch the Course in High Definition '),
        ),
        OutlineButton(
          onPressed: () {},
          child: Text('How to Get the Most Out of the Course  '),
        ),
      ]
      ),
      ExpansionTile(
          title: Text('How to create flutter app from scratch '),
          children: <Widget>[
            OutlineButton(
              onPressed: () {},
              child: Text('Introduction to the Course '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('What is Flutter?'),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('Why Flutter? '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('The Anatomy of a Flutter App '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('How to Watch the Course in High Definition '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('How to Get the Most Out of the Course  '),
            ),
          ]
          ),
      ExpansionTile(
          title: Text('Running App on Physical Device '),
          children: <Widget>[
            OutlineButton(
              onPressed: () {},
              child: Text('Introduction to the Course '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('What is Flutter?'),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('Why Flutter? '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('The Anatomy of a Flutter App '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('How to Watch the Course in High Definition '),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('How to Get the Most Out of the Course  '),
            ),
          ],
          ),
    ],
    ),
  );
}
