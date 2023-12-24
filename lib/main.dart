import 'package:application/theme.dart';
import 'package:flutter/material.dart';
import 'package:application/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tobeto Login Page',
      themeMode: ThemeMode.system,
      theme: ThemeClass
          .lightTheme, // applies this theme if the device theme is light mode
      darkTheme: ThemeClass
          .darkTheme, // applies this theme if the device theme is dark mode

      home: const TobetoLoginPage(),
    );
  }
}
