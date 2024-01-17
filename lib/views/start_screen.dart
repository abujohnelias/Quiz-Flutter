import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/logo/quiz.png",
            color: Colors.pinkAccent,
            height: 150,
          ),

          //?start button
          Padding(
            padding: const EdgeInsets.only(
              right: 130,
              left: 130,
            ),
            child: ElevatedButton(
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(
                  10,
                ),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.only(),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
              onPressed: startQuiz,
              child: const Center(
                child: Text("Start Quiz"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
