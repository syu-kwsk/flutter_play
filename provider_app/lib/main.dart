import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/tweet.dart';
import 'package:provider_app/time_line.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TimeLineController, TimeLine>(
      create: (_) => TimeLineController(),
      child: MaterialApp(
        initialRoute: '/',
        routes: <String, WidgetBuilder> {
          '/': (BuildContext context) =>  HomePage(),
          '/create_tweet': (BuildContext context) =>  CreateTweetPage(),
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('state_notifier sample'),
      ),
      body: Center(child: TL()),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).pushNamed('/create_tweet'),
        label: Icon(Icons.add),
      ),
    );
  }
}

class TL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timeline = context
        .select<TimeLine, List<Tweet>>((state) => state.timeline);
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: timeline.length,
      itemBuilder: (_, index) {
        final tweet = timeline[index];
        return Card(
          child: ListTile(
            title: Text(tweet.name),
            subtitle: Text(tweet.text),
          ),
        );
      },
    );
  }
}

class CreateTweetPage extends StatelessWidget {
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create tweet'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    context.read<TimeLineController>()
                        .add(_textEditingController.value.text);
                    _textEditingController.text = '';
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "do tweet",
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "new tweet",
                    hintText: "What are you doing?",
                  ),
                  maxLength: 140,
                ),
              ]
          )
      ),
    );
  }
}
