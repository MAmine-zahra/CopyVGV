import 'package:flutter/material.dart';
class ThemingContent extends StatelessWidget {
  const ThemingContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Theming Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
