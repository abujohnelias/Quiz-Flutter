import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  final void Function() onTap;
  final String answerText;
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 20,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pink.shade50,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                13,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.pinkAccent.shade100.withOpacity(.6),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Center(
            child: Text(
              answerText,
              style: GoogleFonts.lato(
                color: Colors.pink.shade800,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
