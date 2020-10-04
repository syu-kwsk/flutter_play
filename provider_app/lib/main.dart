import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/counter_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateNotifierProvider<CounterStateNotifier, CounterState>(
        create: (_) => CounterStateNotifier(),
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
      body: Center(child: MyText()),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.read<CounterStateNotifier>().increment(),
        label: Text('1'),
        icon: Icon(Icons.add),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      context.select<CounterState, int>((state) => state.count).toString(),
    );
  }
}
