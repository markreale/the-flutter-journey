import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: new Scaffold(
          appBar: new AppBar(
            title: new Text('It is Material now...'),
          ),
          body: new Container(
              child: new Column(
                  // Why do we need to do this?
                  // Nobody knows...
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                        'We took everything we learned before.',
                        style: new TextStyle(
                          color: Colors.green,
                          fontSize: 20.0,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.left,
                    ),
                    new Text(
                        'And now it has a default material look.',
                        style: new TextStyle(
                          color: Colors.green,
                          fontSize: 20.0,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.left,
                    ),
                    new Text(
                        'And everything else we learned before still applies.',
                      style: new TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.left,
                    ),
                ]
              )
            ),
          floatingActionButton: new FloatingActionButton(
            child: new Icon(Icons.add),
        ),
          )
    )
  );
}