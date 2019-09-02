import 'package:flutter/material.dart';

class TextArea extends StatelessWidget{
  final Color backColor;
  final Color color;
  final Alignment alignment;
  final String content;
  final double padding;

  TextArea({
    this.content,
    this.color,
    this.backColor,
    this.alignment,
    this.padding
  }): super();

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'textArea',
      home: Padding(
        padding: EdgeInsets.all(this.padding),
        child: Container(
          color: this.backColor,
          child: Align(
            alignment: this.alignment,
            child: Text(
              this.content,
              style: TextStyle(fontSize: 32.0),
            ),
          ),
        ),
      ),
    );
  }
}



