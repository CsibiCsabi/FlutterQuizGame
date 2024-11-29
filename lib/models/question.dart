class Question {
  Question({required this.question, required this.answers});

  String question;
  List<String> answers;

  List<String> shuffledAnswers() {
    final copy = List.of(answers);
    copy.shuffle();
    return copy;
  }
}