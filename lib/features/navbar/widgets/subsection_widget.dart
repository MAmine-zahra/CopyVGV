import 'package:flutter/material.dart';
import 'package:new_app/Features/navbar/widgets/text_placers.dart';

class SubsectionWidget extends StatelessWidget {
  final String? subtitle;
  final List<String>? textItems;
  final List<String>? bulletPoints;
  const SubsectionWidget({
    super.key,
    this.subtitle,
    this.textItems,
    this.bulletPoints,
  });

  @override
  Widget build(BuildContext context) {
    // TODO : add any component here as a parameter
    return Column(
      children: [
        subtitle == null ? SizedBox.shrink() : ContentSubtitle(text: subtitle!),
        textItems == null
            ? SizedBox.shrink()
            : ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: textItems!.length,
                itemBuilder: (context, index) =>
                    ContentText(text: textItems![index]),
              ),
        bulletPoints == null
            ? SizedBox.shrink()
            : ContentBulletPoints(points: bulletPoints ?? []),
      ],
    );
  }
}
