import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (questionIndex < 4)
        questionIndex += 1;
      else
        questionIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
              Text(questions.elementAt(questionIndex)),
              ElevatedButton(
                onPressed: answerQuestion,
                child: const Text("Answer 1"),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: const Text("Answer 2"),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: const Text("Answer 3"),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: const Text("Answer 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
