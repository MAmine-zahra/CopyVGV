import 'package:flutter/material.dart';
class ErrorHandlingContent extends StatelessWidget {
  const ErrorHandlingContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Error Handling Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}