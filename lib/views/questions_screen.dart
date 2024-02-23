import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controller/theme_controller.dart';
import 'package:quiz_app/option_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/theme/themes.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onSelectAnswer, super.key});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currQuestionIndex = 0;

  void answerQuestion(String selectAnswer) {
    widget.onSelectAnswer(selectAnswer);
    setState(() {
      currQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currQuestion = questions[currQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GetBuilder<ThemeController>(
              builder: (controller) => Text(
                currQuestion.text,
                style: GoogleFonts.lato(
                  color: controller.isDarkTheme == false
                      ? AppTheme().lightTheme.colorScheme.primary
                      : AppTheme().darkTheme.colorScheme.onPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currQuestion.getShuffledAnswers().map(
              (option) {
                return AnswerButton(
                  answerText: option,
                  onTap: () {
                    answerQuestion(option);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
