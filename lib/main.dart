import 'package:flutter/material.dart';

void main() => runApp(new MyApp() );

class MyApp extends StatelessWidget {
  final title = "First App with Stateful";
  //final message = "statefulwidget";

  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      title: 'first step',
      theme: new ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.blueGrey,
        accentColor: Colors.blue,
        canvasColor: Colors.lightBlueAccent,
      ),
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

class Data {
  int _price;
  String _name;

  Data(this._name, this._price): super();


  @override
  String toString() {
    return _name + ':' + _price.toString() + '円';
  }
}

class _HomePageState extends State<HomePage> {
  String _message;
  static final _data = [
    Data('Apple', 200),
    Data('Curry', 256),
    Data('Gyudon', 373)
  ];


  Data _item;

  @override
  void initState() {
    super.initState();
    _message = 'please press.';
    //_item = _data[0];
  }

  void _setMessage(){
    setState(() {
      if(_message == 'please press.'){
        _item = ( _data..shuffle() ).first;
        _message = 'One more time please. \nI will reset.\n\n'
            + _item.toString();
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
      Center(
        child: Text(
          _message + '\n\n',
          style: TextStyle(fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontFamily: "Roboto"
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setMessage,
        tooltip: 'set message.',
        child: Icon(Icons.star),

      ),
    );

  }
}
