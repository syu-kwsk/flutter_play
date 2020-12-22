import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthModel extends ChangeNotifier {
  User user;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future getCurrentUser() async {
    _auth.authStateChanges().listen((User user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
      this.user = user;
      notifyListeners();
    });
  }
}
