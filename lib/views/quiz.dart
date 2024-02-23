import 'package:flutter/material.dart';
import 'package:quiz_app/controller/theme_controller.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/views/questions_screen.dart';
import 'package:quiz_app/views/results_screen.dart';
import 'package:quiz_app/views/start_screen.dart';
import 'package:quiz_app/theme/themes.dart';
import 'package:get/get.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void startScreen() {
    selectedAnswers = [];
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    // bool isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var controller = Get.put(ThemeController());
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        restartQuiz: startScreen,
      );
    }
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      home: GetBuilder<ThemeController>(
        builder: (controller) => Scaffold(
          appBar: AppBar(
            backgroundColor: controller.isDarkTheme == false
                ? AppTheme().lightTheme.colorScheme.onPrimary
                : AppTheme().darkTheme.colorScheme.primary,
            title: const Text('Quiz App'),
            actions: [
              FloatingActionButton(
                onPressed: () {
                  controller.toggle();
                },
                backgroundColor: controller.isDarkTheme == false
                    ? AppTheme().lightTheme.colorScheme.onPrimary
                    : AppTheme().darkTheme.colorScheme.primary,
                child: Container(
                  child: controller.isDarkTheme == false
                      ? const Icon(Icons.dark_mode)
                      : const Icon(Icons.light_mode),
                ),
              ),
            ],
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: controller.isDarkTheme == false
                    ? [
                        AppTheme().lightTheme.colorScheme.onPrimary,
                        AppTheme().lightTheme.colorScheme.secondary,
                      ]
                    : [
                        AppTheme().darkTheme.colorScheme.primary,
                        AppTheme().darkTheme.colorScheme.secondary,
                      ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
