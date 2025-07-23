import 'package:flutter/material.dart';
class ImageWidget extends StatelessWidget {
  final String image;
  const ImageWidget({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
        child: Image.asset(image)
    );
  }
}
