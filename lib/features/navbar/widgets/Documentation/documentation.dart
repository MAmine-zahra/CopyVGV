import 'package:flutter/material.dart';
class DocumentationContent extends StatelessWidget {
  const DocumentationContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Documentation Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}