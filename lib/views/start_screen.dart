import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 250,
            width: 300,
            color: const Color.fromARGB(146, 255, 239, 239),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Flutter Quiz',
            style: GoogleFonts.roboto(
              color: const Color.fromARGB(171, 255, 255, 255),
              fontSize: 50,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            label: const Text('Start'),
          ),
        ],
      ),
    );
  }
}
