import 'package:flutter/material.dart';
import 'package:quiz_practice/customs/answer_button.dart';
import 'package:quiz_practice/customs/question_tile.dart';
import 'package:quiz_practice/data/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  var questionIndex = 0;

  void selectAnswer(String answer) {
    setState(() {
      widget.onSelectAnswer(answer);
      questionIndex++;
      if (questionIndex >= questions.length) {
        questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [const Color.fromARGB(255, 19, 15, 61), const Color.fromARGB(255, 14, 58, 94), Colors.blue[900] as Color], begin: Alignment.bottomLeft, end: Alignment.topRight, transform: GradientRotation(6))
        ),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        QuestionTile(data: questions[questionIndex].question),
        const SizedBox(
          height: 30,
        ),
        ...questions[questionIndex].shuffledAnswers().map((i) {
          return AnswerButton(data: i, onTap: (String i){selectAnswer(i);});
        }),
      ],
    ));
  }
}
