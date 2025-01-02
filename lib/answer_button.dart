import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;

  const AnswerButton(this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Answer selected: $answerText');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 58, 0, 97),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
      child: Text(
        answerText,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}