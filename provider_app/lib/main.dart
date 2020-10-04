import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/tweet.dart';
import 'package:provider_app/time_line.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateNotifierProvider<TimeLineController, TimeLine>(
        create: (_) => TimeLineController(),
        child: HomePage(),
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
        onPressed: () => context.read<TimeLineController>().add(),
        label: Text('tweet'),
        icon: Icon(Icons.add),
      ),
    );
  }
}

class TL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timeline = context
        .watch<TimeLine>()
        .timeline;
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
