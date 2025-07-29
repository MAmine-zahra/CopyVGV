import 'package:flutter/material.dart';

import 'code_widget.dart';

class ImpDecCodeBlock extends StatefulWidget {
  final String declarative;
  final String imperative;
  final String language;

  const ImpDecCodeBlock({
    super.key,
    required this.declarative,
    required this.imperative,
    this.language = 'dart',
  });

  @override
  State<ImpDecCodeBlock> createState() => _ToggleCodeBlockState();
}

class _ToggleCodeBlockState extends State<ImpDecCodeBlock> {
  bool showDec = true;

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
                label: const Text('Declarative',),
                selected: showDec,
                onSelected: (_) => setState(() => showDec = true),
                selectedColor: Colors.transparent,
              ),
              const SizedBox(width: 3),
              ChoiceChip(
                label: const Text('Imperative'),
                selected: !showDec,
                onSelected: (_) => setState(() => showDec = false),
                selectedColor: Colors.transparent,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        CodeBlock(
          code: showDec ? widget.declarative : widget.imperative,
          language: widget.language,
        ),
      ],
    );
  }
}
