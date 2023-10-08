import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter 101'),
        ),
        body: const Text(
          'Hello World',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Clicked');
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
