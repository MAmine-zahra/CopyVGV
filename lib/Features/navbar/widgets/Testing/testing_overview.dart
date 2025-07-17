import 'package:flutter/material.dart';
class TestingOverview extends StatelessWidget {
  const TestingOverview({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Testing Overview Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}