import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    // the debug banner in the top-right hand corner is kinda cool, but we don't
    // really need it
      debugShowCheckedModeBanner: false,
      // This time, we need to create our 'screens' as separate, independent
      // things
      // We will create a home screen.
      // We will create a second screen.
      // We will link between the two.
    home: new MainScreen(),
      // We can create a list of routes to our available screens
      routes: {
        '/WhyScreen': (context) => WhyScreen(),
        '/HowScreen': (context) => HowScreen()
      },
  ));
}

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context){
    return new SingleChildScrollView(
        child: new Container(
      child: new Column(
        children: <Widget>[
          new Text(
          'We are exploring ways to navigate between screens in a Flutter application.',
            style: new TextStyle(
              color: Colors.green,
              fontSize: 40.0,
              decoration: TextDecoration.none,
            ),
          ),
          new GestureDetector(
              child: new Text(
                  'Why would we do that?.',
                  style: new TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                  ),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/WhyScreen');
              }
          ),
          new GestureDetector(
              child: new Text(
                  'How do we navigate?.',
                style: new TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/HowScreen');
              }
          ),
        ]
      ),
    )
    );
  }
}

class WhyScreen extends StatelessWidget {
  Widget build(BuildContext context){
    // Scaffold is a material thing
    return new SingleChildScrollView(
        child:  new Container(
        child: new Column(
            children: <Widget>[
              new Text(
                  'We are doing this because being able to navigate between things is an important part of an application.',
                style: new TextStyle(
                  color: Colors.green,
                  fontSize: 40.0,
                  decoration: TextDecoration.none,
                ),
              ),
              new GestureDetector(
                  child: new Text(
                      'Back to the Main Screen.',
                    style: new TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/');
                  }
              ),
              new GestureDetector(
                  child: new Text(
                      'How do we navigate?.',
                    style: new TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/HowScreen');
                  }
              ),
            ]
        ),
    )
    );
  }
}

class HowScreen extends StatelessWidget {
  Widget build(BuildContext context){
    // Scaffold is a material thing
    return new SingleChildScrollView(
        child: new Container(
      child: new Column(
          children: <Widget>[
            new Text(
                'We navigate by creating our screens, and then defining the routes to navigate to them.',
              style: new TextStyle(
                color: Colors.green,
                fontSize: 40.0,
                decoration: TextDecoration.none,
              ),
            ),
            new GestureDetector(
                child: new Text(
                    'Back to the Main Screen.',
                  style: new TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/');
                }
            ),
            new GestureDetector(
                child: new Text(
                    'Why do we navigate?.',
                  style: new TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/WhyScreen');
                }
            ),
          ]
      ),
    )
    );
  }
}
