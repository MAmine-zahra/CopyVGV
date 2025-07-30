import 'package:flutter/material.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/text_placers.dart';
import 'package:new_app/features/navbar/widgets/reusable_widgets/declarative_imperative_code.dart';
import 'package:new_app/features/navbar/widgets/reusable_widgets/tip_widget.dart';
import 'package:new_app/features/navbar/widgets/reusable_widgets/toggle_code_block.dart';

import 'caution_widget.dart';
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
  final String? caution;
  final String? imperativeCode;
  final String? declarativeCode;
  final String? tip;
  final String? noteCode;
  final String? tipCode;
  final String? spacer;

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
    this.caution,
    this.imperativeCode,
    this.declarativeCode,
    this.tip,
    this.noteCode,
    this.tipCode,
    this.spacer,
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
        note == null ? SizedBox.shrink() : NoteWidget(note: note!, bulletPoints: notePoints ?? [], code: noteCode!,),
        image == null ? SizedBox.shrink() : ImageWidget(image: image!),
        goodCode == null ? SizedBox.shrink() : ToggleCodeBlock(goodCode: goodCode!, badCode: badCode!),
        imperativeCode == null ? SizedBox.shrink() : ImpDecCodeBlock(imperative: imperativeCode!, declarative: declarativeCode!),
        caution == null ? SizedBox.shrink() : CautionWidget(note: caution!),
        tip == null ? SizedBox.shrink() : TipWidget(tip: tip!, code: tipCode!),
      ],
    );
  }
}

