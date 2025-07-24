import 'package:flutter/material.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/text_placers.dart';
import 'package:new_app/features/navbar/widgets/reusable_widgets/toggle_code_block.dart';

import 'code_widget.dart';
import 'image_widget.dart';
import 'note_widget.dart';

class SubsectionWidget extends StatelessWidget {
  final String? subtitle;
  final List<String>? textItems;
  final List<String>? bulletPoints;
  final String? code;
  final String? note;
  final List<String>? notePoints;
  final String? image;
  final String? goodCode;
  final String? badCode;

  const SubsectionWidget({
    super.key,
    this.subtitle,
    this.textItems,
    this.bulletPoints,
    this.code,
    this.note,
    this.notePoints,
    this.image,
    this.goodCode,
    this.badCode,
  });

  @override
  Widget build(BuildContext context) {
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
        code == null ? SizedBox.shrink() : CodeBlock(code: code!),
        note == null ? SizedBox.shrink() : NoteWidget(note: note!, bulletPoints: notePoints ?? []),
        image == null ? SizedBox.shrink() : ImageWidget(image: image!),
        goodCode == null ? SizedBox.shrink() : ToggleCodeBlock(goodCode: goodCode!, badCode: badCode!),
      ],
    );
  }
}

