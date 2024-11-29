import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary(this.summary, {super.key});

  final List<Map<Object,Object>> summary;

  final List<Color> correctGradient = const [Color.fromARGB(255, 112, 186, 114), Color.fromARGB(255, 60, 184, 64)];

  final List<Color> wrongGradient = const [Color.fromARGB(255, 243, 99, 88), Color.fromARGB(255, 206, 32, 19)];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 2), color: const Color.fromARGB(52, 0, 0, 0)),
      height: 400,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summary.map((i) {
              return Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(161, 2, 2, 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                    Container(
                      width: 22,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: i["correct_answer"]== i["chosen_answer"] ? correctGradient : wrongGradient),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text(((i["question_index"]as int)+1).toString(), style: const TextStyle(fontSize: 16),)),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 300,
                      child: Column(
                        children: [
                          Text("Question: ${i["question"] as String}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Correct answer: ${i["correct_answer"] as String}",
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                            ),
                          ),
                          Text("Your Answer: ${i["chosen_answer"] as String}",
                          overflow: null,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}