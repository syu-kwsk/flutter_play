import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_practice_youtube/quest.dart';

class MainModel extends ChangeNotifier {
  String myText = 'syu-kwsk';
  List<Quest> questList = [];

  void changeMyText() {
    myText = 'proken216';
    notifyListeners();
  }

  Future getQuestList() async {
    final snapshot = await FirebaseFirestore.instance.collection('questList').get();
    final docs = snapshot.docs;

    final questList = docs.map((doc) => Quest(doc)).toList();
    this.questList = questList;
    notifyListeners();
  }

  void getQuestListRealtime() {
    final snapshots = FirebaseFirestore.instance.collection('questList').snapshots();
    snapshots.listen((snapshot) {
      final docs = snapshot.docs;
      final questList = docs.map((doc) => Quest(doc)).toList();
      questList.sort((first, second) => second.createdAt.compareTo(first.createdAt));
      this.questList = questList;
      notifyListeners();
    });
  }
}
