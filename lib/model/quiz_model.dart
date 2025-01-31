class QuizModel {
  String question;
  List<String> answers;
  String correctAnswer;

  QuizModel(this.question, this.answers, this.correctAnswer);

  List<String> getShuffledAnswers() {
    final shuffledAnswers = List<String>.from(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
