import 'package:flutter/material.dart';

void main() => runApp(new MyApp() );

class MyApp extends StatelessWidget {
  final title = "First App with Stateful";
  final message = "statefulwidget";

  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      title: 'first step',
      home: new HomePage(
        title: this.title,
        message: this.message
      ),
    );
  }
}

class HomePage extends StatefulWidget{

  final String title;
  final String message;

  HomePage({this.title, this.message}): super();

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Text(
        widget.message,
        style: TextStyle(fontSize: 20),
      ),

    );

  }
}




