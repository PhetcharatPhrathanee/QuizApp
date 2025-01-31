import 'package:flutter/material.dart';
import 'data/quizz.dart';
import 'start_screen.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final int correctAnswersCount;
  final int totalQuestions;

  const ResultsScreen({
    super.key,
    required this.selectedAnswers,
    required this.correctAnswersCount,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      'Quiz Completed!',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'You answered $correctAnswersCount out of $totalQuestions questions correctly.',
                      style: const TextStyle(fontSize: 16, color: Colors.black87),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final isCorrect = selectedAnswers[index] == questions[index].correctAnswer;
                  return Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: isCorrect ? Colors.green : Colors.red,
                        child: Icon(
                          isCorrect ? Icons.check : Icons.close,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        questions[index].question,
                        style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        'Your answer: ${selectedAnswers[index]}',
                        style: TextStyle(
                          color: isCorrect ? Colors.green : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const StartScreen(),
                  ),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
              icon: const Icon(Icons.restart_alt),
              label: const Text('Restart Quiz', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}