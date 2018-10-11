import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      home: new GestureDetector(
          child: new Text(
            'This is an important message that you can touch.'
          ),
          onTap: (){
            print('In your console, you have revealed more about the message.');
          }
      )
  ));
}