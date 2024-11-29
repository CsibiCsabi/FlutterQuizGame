import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({required this.onPressed, required this.data, super.key});

  final String data;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.cyan[200] as Color, const Color.fromARGB(255, 38, 147, 242)]
        ),
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(17),
      ),

      child: TextButton.icon(
        onPressed: onPressed,
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.transparent),
        ),
        icon: const Icon(
          Icons.arrow_circle_right,
          color: Colors.black,
          size: 27,
          ),
        label: Text(data, style: const TextStyle(
          fontSize: 23,
          color: Colors.black),
          ),

        ),

    );
  }
}