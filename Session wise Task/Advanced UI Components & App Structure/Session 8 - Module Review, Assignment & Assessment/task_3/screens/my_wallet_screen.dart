import 'package:flutter/material.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wallet"),
      ),
      body: const Center(
        child: Text(
          "My Wallet Screen",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

