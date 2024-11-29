import 'package:flutter/material.dart';

class QuestionTile extends StatelessWidget {
  const QuestionTile({required this.data, super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.cyan[200] as Color, Colors.blue[600] as Color]),
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(20)),
        width: 300,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            data,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
