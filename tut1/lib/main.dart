import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questions = ["What is your name?"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Question"),
              ElevatedButton(
                onPressed: (() {}),
                child: Text("Answer 1"),
              ),
              ElevatedButton(
                onPressed: (() {}),
                child: Text("Answer 2"),
              ),
              ElevatedButton(
                onPressed: (() {}),
                child: Text("Answer 3"),
              ),
              ElevatedButton(
                onPressed: (() {}),
                child: Text("Answer 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
