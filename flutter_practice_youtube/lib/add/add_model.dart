import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddModel extends ChangeNotifier {
  String questTitle = '';

  Future addQuest() async {
    final CollectionReference questListRef = FirebaseFirestore.instance.collection('questList');
    await questListRef
        .add({
      'title': questTitle,
      'createdAt': Timestamp.now()
    })
        .then((value) => print("Quest Added: $value"))
        .catchError((error) => print("Failed to add quest: $error"));
  }

}
