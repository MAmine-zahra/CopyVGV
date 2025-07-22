import 'package:flutter/material.dart';
class TextDirectionalityContent extends StatelessWidget {
  const TextDirectionalityContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Text Directionality Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}