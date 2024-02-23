import 'package:get/get.dart';

class ThemeController extends GetxController {
  bool isDarkTheme = false;
  void toggle() {
    isDarkTheme = !isDarkTheme;
    update();
  }
}
