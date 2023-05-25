import 'package:exercise/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:exercise/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fougere',
      home: LoadingScreen(),
    );
  }
}
