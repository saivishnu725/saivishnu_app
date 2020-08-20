import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.centerLeft,
            color: Colors.black45,
            padding: EdgeInsets.only(left: 10.0, top: 370.0, right: 10.0),
            child: Column(children: [
              column1(),
              column2(),
            ])
        )
    );
  }
}

class ImageOfCat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage img = AssetImage('images/cat_sad.png');
    Image image = Image(image: img, width: 250.0, height: 150.0,);
    return Container(child: image,);
  }
}

class column1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text('Hello One 1',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.none,
                    fontFamily: 'Comic Sans MS',
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0))),
        Expanded(
            child: Text('Hello One 2',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.none,
                    fontFamily: 'Comic Sans MS',
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0)))
      ],
    );
  }

}

class column2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(10.0),
      color: Colors.black12,
      child: Row(
        children: [
          Expanded(
              child: Text('Hello Two 1',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.none,
                      fontFamily: 'Comic Sans MS',
                      fontWeight: FontWeight.w700,
                      fontSize: 35.0))),
          Expanded(
              child: Text('Hello Two 2',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.none,
                      fontFamily: 'Comic Sans MS',
                      fontWeight: FontWeight.w700,
                      fontSize: 35.0))),
          Expanded(child: ImageOfCat())
        ],
      ),


    );
  }

}