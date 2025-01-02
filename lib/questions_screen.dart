import 'package:flutter/material.dart';
import 'answer_button.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Questions'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'What are the main building blocks of Flutter UIs?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  AnswerButton('Functions'),
                  const SizedBox(height: 10),
                  AnswerButton('Components'),
                  const SizedBox(height: 10),
                  AnswerButton('Blocks'),
                  const SizedBox(height: 10),
                  AnswerButton('Widgets'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}