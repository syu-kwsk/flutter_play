import 'package:flutter/material.dart';
import 'basic.dart';

void main() => runApp(new MyApp() );

class MyApp extends StatelessWidget {
  final title = "ブラック・ジャック";
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child:
              Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: new TextArea(
                        padding: 1.0,
                        backColor: Colors.cyan,
                        alignment: Alignment.center,
                        content: '相手の手札',
                      ),

//                      child: Padding(
//                        padding: EdgeInsets.all(1.0),
//                        child: Container(
//                          color: Colors.cyan,
//                          child: Align(
//                            alignment: Alignment.center,
//                            child: Text(
//                              '相手の手札',
//                              style: TextStyle(fontSize: 32.0),
//                            ),
//                          ),
//                        ),
//                      ),
                    ) ,
                    Expanded(
                      flex: 1,
                      child: new TextArea(
                        padding: 1.0,
                        backColor: Colors.red,
                        alignment: Alignment.center,
                        content: 'スコア',
                      ),
//                        child: Padding(
//                          padding: EdgeInsets.all(1.0),
//                          child: Container(
//                            color: Colors.red,
//                            child: Align(
//                              alignment: Alignment.center,
//                              child: Text(
//                                'スコア',
//                                style: TextStyle(fontSize: 32.0),
//                              ),
//                            ),
//                          ),
//                        )
                    ) ,

                  ],
                ),
              )
          ),

          Expanded(
              child:
              Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: new TextArea(
                        padding: 1.0,
                        backColor: Colors.orange,
                        alignment: Alignment.center,
                        content: '場',
                      ),

//                      child: Padding(
//                        padding: EdgeInsets.all(1.0),
//                        child: Container(
//                          color: Colors.orange,
//                          child: Align(
//                            alignment: Alignment.center,
//                            child: Text(
//                              '場',
//                              style: TextStyle(fontSize: 32.0),
//                            ),
//                          ),
//                        ),
//                      ),
                    ) ,
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Container(
                            color: Colors.white30,
                            child: Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                  onPressed: cardPressed,
                                  child: Text(
                                    '山札',
                                    style: TextStyle(fontSize: 32.0),)
                              ),
                            ),
                          ),
                        )
                    ) ,

                  ],
                ),
              )
          ),
          Expanded(
              child:
              Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: new TextArea(
                        padding: 1.0,
                        backColor: Colors.green,
                        alignment: Alignment.center,
                        content: '自分の手札',
                      ),

//                      child: Padding(
//                        padding: EdgeInsets.all(1.0),
//                        child: Container(
//                          color: Colors.green,
//                          child: Align(
//                            alignment: Alignment.center,
//                            child: Text(
//                              '自分の手札',
//                              style: TextStyle(fontSize: 32.0),
//                            ),
//                          ),
//                        ),
//                      ),
                    ) ,
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Container(
                            color: Colors.green,
                            child: Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                  color: Colors.teal,
                                  onPressed: geniusPressed,
                                  child: Text(
                                    '天才に聞く',
                                    style: TextStyle(fontSize: 22.0),)
                              ),
                            ),
                          ),
                        )
                    ) ,

                  ],
                ),
              )
          ),



        ],
      ),
//    floatingActionButton: FloatingActionButton(
//        onPressed: fabPressed,
//        tooltip: 'set message.',
//        child: Icon(Icons.star),

    );
  }

  void cardPressed(){
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('Hit !!'),
          content: Text('山札から一枚引きました'),
        )
    );
  }

  void geniusPressed(){
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('Help !!'),
          content: Text('なにが聞きたいんだい？'),
        )
    );
  }

}

