import 'package:flutter/material.dart';
import 'package:tut1/answer.dart';
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
      {
        'questionText': "What is your favorite food ?",
        "answerText": [
          "Pizza",
          "Mo:MO",
          "Samosa",
          "Bread",
        ]
      },
      {
        'questionText': "What is your favorite place to visit ?",
        "answerText": [
          "Kathmandu",
          "Bhaktapur",
          "Lalitpur",
          "Nuwakot",
        ]
      },
      {
        'questionText': "What is your favorite book ?",
        "answerText": [
          "Feynman lecture",
          "University Physics",
          "Grand Design",
          "Intellegient Investor"
        ]
      },
      {
        'questionText': "What is your favorite person ?",
        "answerText": [
          "Feynman",
          "Peterson",
          "Tyson",
          "˚Kaku",
        ]
      },
      {
        'questionText': "What is your favorite thing to do ?",
        "answerText": [
          "Coding",
          "Teaching",
          "Solving math problem",
        ]
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange[300],
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              Question(question[_questionIndex]['questionText'] as String),
              ...(question[_questionIndex]["answerText"] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}
