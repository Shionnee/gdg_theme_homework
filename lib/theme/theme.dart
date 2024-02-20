import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightMode = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colors.purple.shade200,
          foregroundColor: Colors.grey.shade900)),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark, // 2
  ),
  colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      background: Colors.grey.shade100,
      onPrimary: Colors.grey.shade900),
);

ThemeData darkMode = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: Colors.purple.shade400.withOpacity(0.5),
            foregroundColor: Colors.grey.shade100)),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light, // 2
    ),
    colorScheme: ColorScheme.dark(
        brightness: Brightness.dark,
        background: Colors.grey.shade900,
        onPrimary: Colors.grey.shade100));
