import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_practice_youtube/add/add_model.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<AddModel> (
      create: (_) => AddModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('syu-kwsk'),
        ),
        body: Consumer<AddModel>(
          builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: '新クエスト',
                        hintText: '例) 激辛の麻婆豆腐'
                    ),
                    onChanged: (text) {
                      model.questTitle = text;
                    },
                  ),
                  RaisedButton(
                    child: Text('追加'),
                    onPressed: () async {
                      await model.addQuest();
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
