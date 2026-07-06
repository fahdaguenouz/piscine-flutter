import 'package:flutter/material.dart';
import 'pages/bizzcard_page.dart';

void main() {
  runApp(const BizzCardApp());
}

class BizzCardApp extends StatelessWidget {
  const BizzCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BizzCard',
      home: const BizzCardPage(),
    );
  }
}