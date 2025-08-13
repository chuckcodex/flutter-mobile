import 'package:flutter/material.dart';
// Add this import to fix navigation error
import 'package:zakaz/widgets/order.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('🔵'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OrderPage()),
            );
          },
        ),
      ),
    );
  }
}