import 'package:flutter/material.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nowPosition = 0;

  final List<Widget> screens = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dart lesson 3"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Container(
              child: screens[nowPosition],
            ),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text("左へ"),
                    onPressed: _navigateLeft,
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text("右へ"),
                    onPressed: _navigateRight,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _navigateRight() {
    setState(() {
      nowPosition = (screens.length + (nowPosition + 1)) % screens.length;
    });
  }

  void _navigateLeft() {
    setState(() {
      nowPosition = (screens.length + (nowPosition - 1)) % screens.length;
    });
  }
}
