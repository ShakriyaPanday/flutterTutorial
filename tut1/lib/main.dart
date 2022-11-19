import 'package:flutter/material.dart';
import 'package:tut1/questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < 4)
        _questionIndex += 1;
      else
        _questionIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "What is your favorite food ?",
      "What is your favorite place to visit ?",
      "What is your favorite book ?",
      "What is your favorite person ?",
      "What is your favorite thing to do ?",
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Question(question.elementAt(_questionIndex)),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: const Text("Answer 1"),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: const Text("Answer 2"),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: const Text("Answer 3"),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: const Text("Answer 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
