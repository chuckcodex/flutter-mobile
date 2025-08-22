import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'widgets/login.dart';

void main() async {
  // supabase_setup

  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://feaqyfnmhnolwjrtxzff.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZlYXF5Zm5taG5vbHdqcnR4emZmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTUxMjU0MzcsImV4cCI6MjA3MDcwMTQzN30.JYAx_-xKxM1QEZZGbnd_MMfiiFpqm2Tvy1tS_ijn3p8',
  );

  //supabase_setup
  runApp(const ZakazApp());
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