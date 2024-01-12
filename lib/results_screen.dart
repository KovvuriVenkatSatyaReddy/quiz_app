import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.restartQuiz});

  final List<String> chosenAnswers;
  final void Function() restartQuiz;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numOfQuestion = questions.length;
    final numOfCorrectQuestion = summaryData
        .where((data) {
          return data['user_answer'] == data['correct_answer'];
        })
        .toList()
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numOfCorrectQuestion out of $numOfQuestion questions correctly',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromARGB(255, 71, 23, 130),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restartQuiz,
              icon: const Icon(
                Icons.cached,
                color: Color.fromARGB(255, 71, 23, 130),
              ),
              label: const Text(
                'Restart Quiz',
                style: TextStyle(
                  color: Color.fromARGB(255, 71, 23, 130),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
