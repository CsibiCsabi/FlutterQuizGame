import 'package:flutter/material.dart';
import 'package:quiz_practice/customs/start_button.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.onPressed,{super.key});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 42, 198, 219), Color.fromARGB(255, 175, 30, 148)], begin: Alignment.bottomLeft)
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            const Image(image: AssetImage('lib/data/imgs/pngwing.com.png'), width: 200,),
            const SizedBox(height: 200,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(67, 255, 255, 255),
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10)
              ),
              width: 350,
              height: 45,
              child: const Text(
                "This is my quiz app! Yahoo!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
                ),
            ),
            const SizedBox(height: 30,),
            StartButton(onPressed: onPressed, data: "Start!!"),
          ],
        ),
      ),
    );
  }
}