import 'package:flutter/material.dart';

void main() => runApp(new MyApp() );

class MyApp extends StatelessWidget {
  final title = "First layout";
  //final message = "statefulwidget";

  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      title: ' ',
      theme: new ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.blueGrey,
        accentColor: Colors.blue,
        canvasColor: Colors.lightBlueAccent,
      ),
      home: new GamePage(
        title: this.title,
        //message: this.message
      ),
    );
  }
}

class GamePage extends StatefulWidget{

  final String title;
  //final String message;

  GamePage({this.title}): super();

  @override
  _GamePageState createState() => new _GamePageState();
}


class _GamePageState extends State<GamePage> {

  var _stackData = <Widget>[
    Container(
      color: Colors.red,
      width: 200.0,
      height: 200.0,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Stop",
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              "Stop2",
              style: TextStyle(fontSize: 18.0),
            ),
          ]
      ),
    ),

    Container(
      color: Colors.yellow,
      width: 200.0,
      height: 200.0,
      child: Text(
        "Carefully",
        style: TextStyle(fontSize: 18.0),
      ),
    ),
    Container(
      color: Colors.green,
      width: 200.0,
      height: 200.0,
      child: Text(
        "Go",
        style: TextStyle(fontSize: 18.0),
      ),
    ),

  ];

  var _gridData = <Widget>[
    Container(
      color: Colors.red,
      child:
      Text(
        "1",
        style: TextStyle(fontSize: 18.0),
      ),
    ),

    Container(
      color: Colors.yellow,
      child: Text(
        "2",
        style: TextStyle(fontSize: 18.0),
      ),
    ),
    Container(
      color: Colors.green,
      child: Text(
        "3",
        style: TextStyle(fontSize: 18.0),
      ),
    ),
    Container(
      color: Colors.white,
      child:
      Text(
        "4",
        style: TextStyle(fontSize: 18.0),
      ),
    ),

    Container(
      color: Colors.cyanAccent,
      child: Text(
        "5",
        style: TextStyle(fontSize: 18.0),
      ),
    ),
    Container(
      color: Colors.purple,
      child: Text(
        "6",
        style: TextStyle(fontSize: 18.0),
      ),
    ),

  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title,
            style: TextStyle(fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto"),
          ),
        ),
      ),
      body:
      GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        padding: EdgeInsets.all(10.0),
        children: _gridData,
      ),
//      Stack(
//        children: _stackData,
//        alignment: Alignment.center,
//      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fabPressed,
        tooltip: 'set message.',
        child: Icon(Icons.star),

      ),
    );

  }
  void fabPressed(){
    setState(() {
      _stackData.insert(0, _stackData.removeLast());
    });
  }
}

