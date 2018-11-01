import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      home: new SingleChildScrollView(
          child: new Container(
              child: new Column(
                  children: <Widget>[
                    new Text('What is this all about?',
                        style: new TextStyle(
                          color: Colors.white,
                          fontFamily: "Cormorant",
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                    ),
                    new Text('This is an important message. '
                        'You are receiving the message due to its importance. It took a lot of '
                        'work to get this message here. We thought that if we sent a long '
                        'message, and the message was too long to fit on your entire screen, '
                        'your device would be intelligent enough to make the screen scroll in '
                        'order to read the whole message. But no. This is not the default '
                        'behaviour in a Flutter application. Rumor is this is not default '
                        'behaviour in other mobile interface systems as well. How do people '
                        'live like this? These are the types of things developers need to deal '
                        'with. No default scrolling. What a life.',
                        style: new TextStyle(
                          color: Colors.white,
                          fontFamily: "Cormorant",
                          fontWeight: FontWeight.w100,
                          decoration: TextDecoration.none,
                          fontSize: 24.0,
                          height: 1.5,
                        ),
                    ),
                  ]
              ),
            padding: const EdgeInsets.all(40.0),
          )
      )
  ));
}