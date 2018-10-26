import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      // the debug banner in the top-right hand corner is kinda cool, but we don't
      // really need it
      debugShowCheckedModeBanner: false,
      // wrap everything in a Container so you have a widget that you can control
      // the background color of
      // the Styles for the Container are at the bottom
      // https://docs.flutter.io/flutter/widgets/Container-class.html
      home: new Container(
          child: Column(
              children: <Widget>[
                  // Padding is a type of widget!
                  // https://docs.flutter.io/flutter/widgets/Padding-class.html
                  new Padding(
                      padding: EdgeInsets.all(20.0),
                      // TextStyle to Style the Text
                      // https://docs.flutter.io/flutter/painting/TextStyle-class.html
                      child: new Text(
                        'This is an important message.',
                        style: new TextStyle(
                          color: Colors.green,
                          fontSize: 20.0,
                          decoration: TextDecoration.none,
                        ),

                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(20.0),
                    child: new Text(
                      'This is to emphasize how important the last message was.',
                      style: new TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                      ),

                    ),
                  ),
              ]
          ),
          // Styles for the actual Container
          padding: const EdgeInsets.all(20.0),
          color: Colors.white,
      )
  ));
}



