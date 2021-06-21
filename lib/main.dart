import 'dart:ffi';

import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 1;

  void increment() {
    setState((){
      ++count;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
      ),
      body: Center(
        child: Text(
          "Clicks:\n$count",
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
    );
  }
}
