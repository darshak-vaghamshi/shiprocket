import 'package:flutter/material.dart';
import 'package:shiprocket/botton_bar/botton_bar.dart';
import 'package:provider/provider.dart';
import 'package:shiprocket/provider/card_provider.dart';
import 'package:shiprocket/provider/favorite_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CartProvider()),
          ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottonBar(),
        ),
      );
}
