import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_practice_youtube/main_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel> (
        create: (_) => MainModel()..getQuestList(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('syu-kwsk'),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              final questList = model.questList;
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
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children:
                      questList.map(
                            (quest) => ListTile(
                          title: Text(quest.title),
                          subtitle: Text(quest.createdAt.toString()),
                        ),
                      ).toList(),
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
