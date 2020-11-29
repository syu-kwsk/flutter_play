import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddModel extends ChangeNotifier {
  String questTitle = '';

  Future addQuest() async {
    final CollectionReference questListRef = FirebaseFirestore.instance.collection('questList');
    final DateTime now = DateTime.now();
    await questListRef
        .add({
      'title': questTitle,
      'createdAt': Timestamp.fromDate(
          DateTime(now.year, now.month, now.day, now.hour, now.minute, now.second)
      )
    })
        .then((value) => print("Quest Added: $value"))
        .catchError((error) => print("Failed to add quest: $error"));
  }

}
