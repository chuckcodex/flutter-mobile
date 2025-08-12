import 'package:flutter/material.dart';
import 'menu_screen.dart'; // make sure this path matches your file

void main() {
  runApp(const ZakazApp());
}

class ZakazApp extends StatelessWidget {
  const ZakazApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MenuScreen(), // 👈 Start directly on MenuScreen
    );
  }
}
