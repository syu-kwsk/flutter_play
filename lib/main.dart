import 'package:flutter/material.dart';

void main() => runApp(new MyApp() );

class MyApp extends StatelessWidget {
  final title = "First App with Stateful";
  //final message = "statefulwidget";

  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      title: 'first step',
      home: new HomePage(
        title: this.title,
        //message: this.message
      ),
    );
  }
}

class HomePage extends StatefulWidget{

  final String title;
  //final String message;

  HomePage({this.title}): super();

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _message;

  @override
  void initState() {
    super.initState();
    _message = 'please press.';
  }

  void _setMessage(){
    setState(() {
      if(_message == 'please press.'){
        _message = 'One more time please. \n\nI will reset.';
      }
      else{
        _message = 'please press.';
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text(
        _message,
        style: TextStyle(fontSize: 20),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setMessage,
        tooltip: 'set message.',
        child: Icon(Icons.star),

      ),
    );

  }
}
