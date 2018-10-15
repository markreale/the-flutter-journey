import 'package:flutter/material.dart';

// create a class that extends the Flutter StatefulWidget
// this is a Widget
// you are making your own widget here
// that is a pretty cool thing!
class counterThing extends StatefulWidget{
  // create the state
  createState(){
    return counterState();
  }
}

class counterState extends State<counterThing>{
  int counter = 0;

  static const int INCREASE = 1;
  static const int DECREASE = -1;

  void adjustCounter(int operation){
    setState((){
      counter += operation;
    });
  }

  Widget build(BuildContext context){
    return new Column(
          children: <Widget>[
              new Text(
                '$counter',
          ),
              new GestureDetector(
                  child: new Text(
                      'Increase the count'
                  ),
                  onTap: (){
                    adjustCounter(INCREASE);
                  }),
              new GestureDetector(
                  child: new Text(
                      'Decrease the count'
                  ),
                  onTap: (){
                    adjustCounter(DECREASE);
                  }),
        ]
    );
  }
}

void main(){
  runApp(MaterialApp(
      home: new counterThing()
  ));
}