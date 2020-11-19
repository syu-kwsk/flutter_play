import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('syu-kwsk'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'I\'m syu-kwsk',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              RaisedButton(
                child: Text('Button'),
                onPressed: () {
                  // something
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
