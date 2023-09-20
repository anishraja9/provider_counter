import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/counter_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterApplication>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        '${counter.count}',
        style: TextStyle(fontSize: 30),
      )),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.add),
          onPressed: () {
            counter.increment();
          },
        ),
        FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.minimize),
          onPressed: () {
            counter.decrement();
          },
        ),
      ]),
    );
  }
}
