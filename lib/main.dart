import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Container createContainer(String text, Color color) {
    return Container(
      width: 50,
      height: 50,
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter 101'),
        ),
        // buraya bir row içerisinde Flutter yazılı ve ve her bir harf için farklı bir renkte kare oluşturulacak spaceBetween ile aralarında boşluk olacak
        // ilk column içersindede de dikey biçimde Dersleri yazılı ve her bir harf için farklı bir renkte kare oluşturulacak spaceAround ile aralarında boşluk olacak
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getFlutterRow(),
            Expanded(child: getDersleriCol()),
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

  Column getDersleriCol() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: createContainer("D", Colors.red),
        ),
        Expanded(
          child: createContainer("E", Colors.blue),
        ),
        Expanded(
          child: createContainer("R", Colors.yellow),
        ),
        Expanded(
          child: createContainer("S", Colors.green),
        ),
        Expanded(
          child: createContainer("L", Colors.orange),
        ),
        Expanded(
          child: createContainer("E", Colors.purple),
        ),
        Expanded(
          child: createContainer("R", Colors.brown),
        ),
        Expanded(
          child: createContainer("I", Colors.red),
        ),
      ],
    );
  }

  Row getFlutterRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        createContainer("F", Colors.red),
        createContainer("L", Colors.blue),
        createContainer("U", Colors.yellow),
        createContainer("T", Colors.green),
        createContainer("T", Colors.orange),
        createContainer("E", Colors.purple),
        createContainer("R", Colors.brown),
      ],
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
