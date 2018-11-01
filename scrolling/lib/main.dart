import 'package:flutter/material.dart';



void main(){
  runApp(MaterialApp(
    home: new SingleChildScrollView(
      child: new Text('This is an important message. '
          'You are receiving the message due to its importance. It took a lot of '
          'work to get this message here. We thought that if we sent a long '
          'message, and the message was too long to fit on your entire screen, '
          'your device would be intelligent enough to make the screen scroll in '
          'order to read the whole message. But no. This is not the default '
          'behaviour in a Flutter application. Rumor is this is not default '
          'behaviour in other mobile interface systems as well. How do people '
          'live like this? These are the types of things developers need to deal '
          'with. No default scrolling. What a life.'),
  )));
}