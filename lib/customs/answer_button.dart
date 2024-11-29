import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.data, required this.onTap, super.key});

  final String data;

  final void Function(String answer) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(5),
      width: 300,
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.black, offset: Offset(2, 2))],
        gradient: const LinearGradient(
          colors: [ Color.fromARGB(255, 245, 166, 219), Color.fromARGB(255, 240, 91, 211)]
        ),
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(17),
      ),
      child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
            elevation: WidgetStatePropertyAll(0),
          ),
          onPressed: (){
          onTap(data);
        }, child: Text(data, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),)),
    );
  }
}