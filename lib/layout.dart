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
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget>[

                  Text(
                    'Start Layout1|\n\n',
                    style: TextStyle(fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto"
                    ),
                  ),
                  Text(
                    'Layout2|\n\n',
                    style: TextStyle(fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto"
                    ),
                  ),
                  Text(
                    'Layout3|\n\n',
                    style: TextStyle(fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto"
                    ),
                  ),
                ]
            ),
            Text(
              'Center Layout\n\n',
              style: TextStyle(fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto"
              ),
            ),
            Text(
              'End Layout\n\n',
              style: TextStyle(fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto"
              ),
            ),
          ]

      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _setMessage,
//        tooltip: 'set message.',
//        child: Icon(Icons.star),
//
//      ),

    );

  }
}
