import 'package:flutter/material.dart';
import 'package:quiz_practice/data/questions.dart';
import 'package:quiz_practice/questions_page.dart';
import 'package:quiz_practice/start_page.dart';
import 'package:quiz_practice/summary_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override


  void initState() {
    currentPage = StartPage(start);
    super.initState();
  }

  Widget? currentPage;

  List<String> answers= [];

  void selectedAnswer(String answer){
    answers.add(answer);
    if (answers.length >= questions.length){
      setState(() {
        currentPage = SummaryPage(answers: answers, restart: restart);
      });
    }
  }

  void start(){
    setState(() {
      currentPage = QuestionsPage(onSelectAnswer: selectedAnswer);
    });
  }

  void restart() {
    setState(() {
      answers = [];
      currentPage = QuestionsPage(onSelectAnswer: selectedAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return currentPage as Widget;
  }
}