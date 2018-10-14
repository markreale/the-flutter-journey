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
                    setState((){
                      counter += 1;
                    });
                  }),
              new GestureDetector(
                  child: new Text(
                      'Decrease the count'
                  ),
                  onTap: (){
                    setState((){
                      counter -= 1;
                    });
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