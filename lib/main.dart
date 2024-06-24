import 'package:flutter/material.dart';
import 'package:shiprocket/botton_bar/botton_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottonBar(),
    );
  }
}
