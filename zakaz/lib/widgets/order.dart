import 'package:flutter/material.dart';
import 'package:zakaz/widgets/login.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Page'),
      ),
      body: const Center(
        child: Text('Welcome to the Order Page!'),
      ),
    );
  }
}