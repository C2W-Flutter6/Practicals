import 'package:flutter/material.dart';
import 'Container.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: styleContainer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
