import 'package:flutter/material.dart';
import 'features/login/presentation/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF171717),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFFC70000)),
      ),
      // home: const HomeScreen(),
      home: LoginScreen(),
    );
  }
}
