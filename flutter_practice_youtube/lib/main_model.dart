import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String myText = 'syu-kwsk';

  void changeMyText() {
    myText = 'proken216';
    notifyListeners();
  }
}
