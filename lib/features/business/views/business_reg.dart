import 'package:flutter/material.dart';

class BusinessRegistrationScreen extends StatelessWidget {
  const BusinessRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Business Registration')),
      body: Center(
        child: Text(
          'Welcome to the Business Registration Page',
          style: TextStyle(fontSize: 20, color: Colors.black87),
        ),
      ),
    );
  }
}
