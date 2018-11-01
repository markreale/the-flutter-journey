import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    // the debug banner in the top-right hand corner is kinda cool, but we don't
    // really need it
    debugShowCheckedModeBanner: false,
    // This time, we need to create our 'screens' as separate, independent
    // things
    // We will create a home screen.
    // We will create a second screen.
    // We will link between the two.
    // This maps the MainScreen widget to be the Home of the application
    home: new MainScreen(),
    // We can create a list of routes to our available screens
    routes: {
      '/WhyScreen': (context) => WhyScreen(),
      '/HowScreen': (context) => HowScreen()
    },
  ));
}

// Widget 1
// This is the Main Screen or Home Screen or Landing Screen
class MainScreen extends StatelessWidget {
    Widget build(BuildContext context) {
        return new SingleChildScrollView(
            child: new Container(
                child: new Column(children: <Widget>[
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
                        onTap: () {
                          // This is where we navigate!
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
                        onTap: () {
                          // This is also where we navigate!
                          Navigator.pushNamed(context, '/HowScreen');
                        }
                    ),
                ]),
            )
        );
    }
}

// Widget 2
// This is a screen that can get linked to
class WhyScreen extends StatelessWidget {
    Widget build(BuildContext context) {
        return new SingleChildScrollView(
            child: new Container(
                child: new Column(children: <Widget>[
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
                        onTap: () {
                            Navigator.pushNamed(context, '/');
                        }),
                    new GestureDetector(
                        child: new Text(
                            'How do we navigate?.',
                            style: new TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20.0,
                                decoration: TextDecoration.none,
                            ),
                        ),
                        onTap: () {
                            Navigator.pushNamed(context, '/HowScreen');
                        }
                    ),
                ]
            ),
        ));
    }
}

// Widget 3
// this is another screen that can get linked to
// this widget will feature a background so that you can see how without a
// defined background, a screen background by default is transparent
// and you can see the text from one screen overlapping the other
class HowScreen extends StatelessWidget {
    Widget build(BuildContext context) {
        return new SingleChildScrollView(
            child: new Container(
                child: new Column(children: <Widget>[
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
                    onTap: () {
                        Navigator.pushNamed(context, '/');
                    }),
                    new GestureDetector(
                        child: new Text(
                            'Why do we navigate?.',
                            style: new TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20.0,
                                decoration: TextDecoration.none,
                            ),
                        ),
                        onTap: () {
                            Navigator.pushNamed(context, '/WhyScreen');
                        }
                    ),
                ]),
                color: Colors.white,
            )
        );
    }
}
