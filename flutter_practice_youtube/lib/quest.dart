import 'package:cloud_firestore/cloud_firestore.dart';

class Quest {
  Quest(DocumentSnapshot doc) {
    this.title = doc.data()['title'];
    this.createdAt = doc.data()['createdAt'].toDate(); //DateTimeに直す
  }

  String title;
  DateTime createdAt;
}