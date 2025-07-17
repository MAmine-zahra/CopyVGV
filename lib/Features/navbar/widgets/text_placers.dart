import 'package:flutter/material.dart';

//text title

class TextTitle extends StatelessWidget {
  final String text;
  const TextTitle({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(255, 50, 56, 70), width: 1),
        ),
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Backend Architecture',
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

//Content Page

class ContentPage extends StatelessWidget {
  final String mainTitle;
  final List<Widget> contentChildren;
  final EdgeInsetsGeometry padding;
  const ContentPage({
    super.key,
    required this.mainTitle,
    required this.contentChildren,
    this.padding = const EdgeInsets.all(24),
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitle(text: mainTitle),
          const SizedBox(height: 16),
          ...contentChildren,
        ],
      ),
    );
  }
}

//Subtitle Text

class ContentSubtitle extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;

  const ContentSubtitle({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.only(top: 16, bottom: 8),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

//Text Content

class ContentText extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;

  const ContentText({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.only(bottom: 12),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white70, fontSize: 16),
      ),
    );
  }
}

//Bullet Points

class ContentBulletPoints extends StatelessWidget {
  final List<String> points;

  const ContentBulletPoints({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: points
            .map(
              (point) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  '• $point',
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
