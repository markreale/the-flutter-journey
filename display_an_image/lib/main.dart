import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    // the debug banner in the top-right hand corner is kinda cool, but we don't
    // really need it
      debugShowCheckedModeBanner: false,
      // wrap everything in a Container
      // https://docs.flutter.io/flutter/widgets/Container-class.html
      home: new Container(
        child: new Image.asset(
          'images/planet_earth.jpg'
        ),
      )
  ));
}



