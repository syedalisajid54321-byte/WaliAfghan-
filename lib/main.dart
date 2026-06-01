```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const WaliAfghanApp());
}

class WaliAfghanApp extends StatelessWidget {
  const WaliAfghanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wali Afghan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Wali Afghan App is Ready!',
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
