import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors App',
      theme: ThemeData(useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final List<Widget> _list = [];

  void _incrementCounter() {
    setState(() {
      _list.add(const ColoredCard());
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_list.length);
    return Scaffold(
      appBar: AppBar(title: const Text('Colors App')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(children: _list),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ColoredCard extends StatelessWidget {
  const ColoredCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      width: 100,
      color: Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      ),
    );
  }
}

class A {
  final int a;

  A({required this.a});
}
