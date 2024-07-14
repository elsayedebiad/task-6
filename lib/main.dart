import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const Task6());
}

class Task6 extends StatelessWidget {
  const Task6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}