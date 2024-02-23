import 'package:flutter/material.dart';

class AppTheme {
  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color.fromARGB(255, 27, 6, 36),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromARGB(255, 102, 23, 158),
      onPrimary: Color.fromARGB(255, 202, 23, 234),
      secondary: Colors.blueAccent,
      onSecondary: Colors.blue,
      error: Colors.red,
      onError: Colors.red,
      background: Colors.pink,
      onBackground: Colors.pink,
      surface: Color.fromARGB(255, 9, 16, 9),
      onSurface: Color.fromARGB(255, 252, 255, 252),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(255, 103, 37, 132),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.purple[700],
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.purple[700],
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 255, 255, 255),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.purple[700],
      contentTextStyle: const TextStyle(color: Colors.white),
    ),
  );

  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 25, 17, 28),
    scaffoldBackgroundColor: Colors.grey[900],
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color.fromARGB(255, 20, 16, 20),
      onPrimary: Color.fromARGB(255, 205, 199, 206),
      secondary: Color.fromARGB(255, 38, 47, 61),
      onSecondary: Color.fromARGB(255, 48, 63, 75),
      error: Colors.red,
      onError: Colors.red,
      background: Color.fromARGB(255, 42, 30, 34),
      onBackground: Color.fromARGB(255, 55, 41, 46),
      surface: Color.fromARGB(255, 4, 6, 4),
      onSurface: Color.fromARGB(255, 255, 255, 255),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: const Color.fromARGB(255, 255, 255, 255),
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.grey[800],
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.purple[700],
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.purple[700],
      contentTextStyle: const TextStyle(color: Colors.white),
    ),
  );
}
