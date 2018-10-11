import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: new Column(
      children: <Widget>[
        new Text('This is an important message.'),
        new Text('This is to emphasize how important the last message was.')
      ]
    )
  ));
}