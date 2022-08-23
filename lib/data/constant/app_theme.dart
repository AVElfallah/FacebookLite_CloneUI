import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get appLightTheme {
    return ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blue.shade50,
      ),
      //
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
          ),
          primary: Colors.black54,
          elevation: 0,
        ),
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
      ),
      dividerColor: Colors.black,
      dividerTheme: const DividerThemeData(
        color: Colors.black,
      ),

      scaffoldBackgroundColor: Colors.blueGrey.shade300,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.amber,
          textStyle: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      //
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        titleTextStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  ThemeData get appDarkTheme {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
          ),
          primary: Colors.black,
          elevation: 0,
        ),
      ),
      dividerColor: Colors.amber,
      dividerTheme: const DividerThemeData(
        color: Colors.amber,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.blueGrey.shade800,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blue.shade900,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.black,
          textStyle: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blueGrey.shade800,
      ),
    );
  }
}
