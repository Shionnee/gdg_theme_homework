import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdg_theme_homework/pages/home_page.dart';
import 'package:gdg_theme_homework/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'Counter App',
      theme: lightMode,
      darkTheme: darkMode,
      home: const HomePage(title: 'CounterApp'),
      debugShowCheckedModeBanner: false,
    );
  }
}
