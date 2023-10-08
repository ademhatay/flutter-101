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
        body: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.yellow,
                      child: const FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: const FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: const FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.yellow,
                      child: const FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: const FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: const FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.yellow,
                      child: const FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: const FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: const FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.red,
            width: 3,
          ),
          image: const DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1695653422718-48c2cc37caf7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80'),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: const Text(
          "I'm",
          style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
