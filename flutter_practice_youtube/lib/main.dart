import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_practice_youtube/main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel> (
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('syu-kwsk'),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.myText,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    RaisedButton(
                      child: Text('Button'),
                      onPressed: () {
                        // something
                        model.changeMyText();
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
