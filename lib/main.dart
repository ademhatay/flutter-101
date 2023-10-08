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
        body: Center(
          child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              alignment: Alignment.center,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text('Hello'),
              )),
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
