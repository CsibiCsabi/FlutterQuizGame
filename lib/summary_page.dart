import 'package:flutter/material.dart';
import 'package:quiz_practice/customs/start_button.dart';
import 'package:quiz_practice/customs/summary.dart';
import 'package:quiz_practice/data/questions.dart';

class SummaryPage extends StatelessWidget {
  SummaryPage({required this.answers, required this.restart, super.key});

  final List<String> answers;
  final void Function() restart;

  List<Map<Object,Object>> getSummary(){
    final List<Map<Object,Object>> summary = [];
    for (var i = 0; i < answers.length; i++){
      summary.add(
        {
          "question_index" : i,
          "question" : questions[i].question,
          "correct_answer" : questions[i].answers[0],
          "chosen_answer" : answers[i]
        }
      );
    }
    return summary;
  }

  int getcorrects() {
    List<Map<Object,Object>> summary = getSummary();
    int count = 0;
    for (int i = 0; i < summary.length; i++){
      if (summary[i]["correct_answer"]==summary[i]['chosen_answer']){
        count++;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 42, 198, 219), Color.fromARGB(255, 175, 30, 148)], begin: Alignment.bottomLeft)
      ),
      child: Column(
        children: [

          const SizedBox(height: 50,),
          Image(image: getcorrects()>=4 ? const AssetImage("lib/data/imgs/smile.png") : const AssetImage("lib/data/imgs/sad.png"),width: 100,),
          const SizedBox(height: 5,),
          Text("You got ${getcorrects()} answers right!", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          Summary(getSummary()),
          const SizedBox(height: 15,),
          StartButton(onPressed: restart, data: "Restart")
        ],
      ),
    );
  }
}