import 'package:flutter/material.dart';
import 'widgets/login.dart';

void main() {
  runApp(ZakazApp());
}

class ZakazApp extends StatelessWidget {
  const ZakazApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}