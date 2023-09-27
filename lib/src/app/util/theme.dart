import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp {
  // static T isIf<T>(BuildContext context, {required T light, required T dark}) {
  //   return Theme.of(context).brightness == Brightness.dark ? dark : light;
  // }

  static ThemeData light = ThemeData(
    textTheme: GoogleFonts.quicksandTextTheme(
      TextTheme(
        displayLarge: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black87),
        bodySmall: TextStyle(color: Colors.blueGrey[700], fontSize: 14),
        bodyLarge: TextStyle(color: Colors.blueGrey[700]),
      ),
    ),
    primaryColor: const Color.fromARGB(235, 85, 94, 218),
    // cursorColor: configuration.primaryColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color.fromARGB(235, 85, 94, 218),
    ),
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.blueGrey[200],
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(235, 85, 94, 218),
      foregroundColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 10,
      iconTheme: IconThemeData(color: Colors.blueGrey[800]),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      toolbarTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: Colors.blueGrey[800],
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: Colors.blueGrey[800],
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ).titleLarge,
    ),
    colorScheme: const ColorScheme.light(
      primary: Color.fromARGB(235, 85, 94, 218),
    ).copyWith(secondary: const Color.fromARGB(235, 85, 94, 218)),
  );

  static ThemeData dark = ThemeData(
    primaryColor: const Color.fromARGB(235, 85, 94, 218),
    // cursorColor: configuration.primaryColor,
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Color.fromARGB(235, 85, 94, 218)),
    brightness: Brightness.dark,
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.blueGrey[200],
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: const Color.fromARGB(235, 85, 94, 218),
      foregroundColor: Colors.grey[850],
    ),
    textTheme: GoogleFonts.quicksandTextTheme(
      TextTheme(
        displayLarge: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        bodySmall: TextStyle(color: Colors.blueGrey[200], fontSize: 14),
        bodyLarge: TextStyle(color: Colors.blueGrey[200]),
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.grey[700],
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 10,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      toolbarTextStyle: const TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ).bodyMedium,
      titleTextStyle: const TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ).titleLarge,
    ),
    scaffoldBackgroundColor: Colors.grey[850],
    colorScheme: const ColorScheme.dark(
      primary: Color.fromARGB(235, 85, 94, 218),
    ).copyWith(secondary: const Color.fromARGB(235, 85, 94, 218)),
  );
}
