import 'package:flutter/material.dart';
class WidgetsContent extends StatelessWidget {
  const WidgetsContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Widgets Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
