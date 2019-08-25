import 'package:flutter/material.dart';

void main() => runApp(new MyApp() );

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      title: 'first step',
      home: Text(
          '\n\n'
       +  'Hello, '
       +  'Flutter '
       +  'World!!',
      style: TextStyle(fontSize: 20)
      )
    );
  }
}




