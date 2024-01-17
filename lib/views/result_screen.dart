import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizflutter/data/questions_data.dart';
import 'package:quizflutter/widgets/questions_summery.dart';

class ResultScreen extends StatelessWidget {
  final void Function() restartQuiz;
  final List<String> choosenAnswer;
  const ResultScreen({
    super.key,
    required this.choosenAnswer,
    required this.restartQuiz,
  });

  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].questions,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosenAnswer[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummeryData();
    final noOfTotalQuestions = questions.length;
    final noOfCorrectQuestions = summaryData.where(
      (data) {
        return data['user_answer'] == data['correct_answer'];
      },
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You answered $noOfCorrectQuestions out of $noOfTotalQuestions questions correctly!",
            style: GoogleFonts.montserrat(
              color: Colors.pink.shade800,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),

          Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: QuextionSummery(
              summaryData,
            ),
          ),

          //?restart button
          Padding(
            padding: const EdgeInsets.only(
              right: 130,
              left: 130,
            ),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.restart_alt_rounded),
              label: const Text("Restart Quiz!"),
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(
                  10,
                ),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
              onPressed: restartQuiz,
              // child: const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       Icon(Icons.restart_alt_rounded),
              //       Text("Restart Quiz!"),
              //     ],
              //   ),
              // ),
            ),
          )
        ],
      ),
    );
  }
}
