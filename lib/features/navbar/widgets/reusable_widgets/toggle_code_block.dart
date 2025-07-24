import 'package:flutter/material.dart';

import 'code_widget.dart';

class ToggleCodeBlock extends StatefulWidget {
  final String goodCode;
  final String badCode;
  final String language;

  const ToggleCodeBlock({
    super.key,
    required this.goodCode,
    required this.badCode,
    this.language = 'dart',
  });

  @override
  State<ToggleCodeBlock> createState() => _ToggleCodeBlockState();
}

class _ToggleCodeBlockState extends State<ToggleCodeBlock> {
  bool showGood = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 50, 56, 70), width: 3),
            ),
          ),
          child: Row(
            children: [
              ChoiceChip(
                label: const Text('Good ✅'),
                selected: showGood,
                onSelected: (_) => setState(() => showGood = true),
                selectedColor: Colors.green[700],
              ),
              const SizedBox(width: 3),
              ChoiceChip(
                label: const Text('Bad ❗'),
                selected: !showGood,
                onSelected: (_) => setState(() => showGood = false),
                selectedColor: Colors.red[700],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        CodeBlock(
          code: showGood ? widget.goodCode : widget.badCode,
          language: widget.language,
        ),
      ],
    );
  }
}
