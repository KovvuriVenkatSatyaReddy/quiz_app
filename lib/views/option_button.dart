import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controller/theme_controller.dart';
import 'package:quiz_app/theme/themes.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (controller) => ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          // ignore: prefer_const_constructors
          backgroundColor: controller.isDarkTheme == false
              ? AppTheme().lightTheme.colorScheme.primary
              : AppTheme().darkTheme.colorScheme.secondary,
          foregroundColor: controller.isDarkTheme == false
              ? Colors.white
              : AppTheme().darkTheme.colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
