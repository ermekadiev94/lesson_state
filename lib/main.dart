import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int random = Random().nextInt(100);
  bool _onChange = true;

  @override
  Widget build(BuildContext context) {
    print('This Build method is working');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                color: _onChange == true ? Colors.blue : Colors.red,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              width: double.infinity,
              height: 100,
              child: FittedBox(
                child: Text('My Stateful Widget $_onChange'),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _onChange = !_onChange;
            });
          },
          child: const Icon(
            Icons.replay_outlined,
          ),
        ),
      ),
    );
  }
}
