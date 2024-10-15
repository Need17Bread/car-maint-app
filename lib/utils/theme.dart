import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,  // Primary color set to black
    scaffoldBackgroundColor: Colors.white,  // White background for light mode
    colorScheme: ColorScheme.light(
      primary: Colors.black,   // Primary accent black
      secondary: const Color.fromARGB(255, 226, 226, 226), // Secondary accent black
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white, // AppBar color set to black
      foregroundColor: Colors.white, // White text/icons on AppBar
      
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.blue[800],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,  // Adjust unselected item color if needed
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.black,  // Floating Action Button in black
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,  // Primary color set to white
    scaffoldBackgroundColor: Colors.black,  // Black background for dark mode
    colorScheme: ColorScheme.dark(
      primary: Colors.white,  // Primary accent white
      secondary: const Color.fromARGB(255, 122, 122, 122), // Secondary accent white
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black, // AppBar color set to white
      foregroundColor: Colors.white, // Black text/icons on AppBar
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,  // Adjust unselected item color if needed
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white,  // Floating Action Button in white
    ),
  );
}
