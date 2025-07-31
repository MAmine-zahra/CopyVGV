import 'package:flutter/material.dart';

import 'code_widget.dart';

class ToggleCodeBlock extends StatefulWidget {
  final String? goodCode;
  final String? badCode;
  final String language;

  const ToggleCodeBlock({
    super.key,
    this.goodCode,
    this.badCode,
    this.language = 'dart',
  });

  @override
  State<ToggleCodeBlock> createState() => _ToggleCodeBlockState();
}

class _ToggleCodeBlockState extends State<ToggleCodeBlock> {
  bool showGood = true;

  @override
  Widget build(BuildContext context) {
    final hasGood = widget.goodCode != null && widget.goodCode!.trim().isNotEmpty;
    final hasBad = widget.badCode != null && widget.badCode!.trim().isNotEmpty;

    // Determine which code to show
    String? codeToShow;
    if (hasGood && (!hasBad || showGood)) {
      codeToShow = widget.goodCode;
    } else if (hasBad) {
      codeToShow = widget.badCode;
    }

    // Chips UI logic
    final chips = <Widget>[];
    if (hasGood) {
      chips.add(
        ChoiceChip(
          label: const Text('Good ✅'),
          selected: showGood,
          onSelected: hasBad ? (_) => setState(() => showGood = true) : (_){},

          selectedColor: Colors.green[700],
        ),
      );
    }
    if (hasBad) {
      chips.add(
        ChoiceChip(
          label: const Text('Bad ❗'),
          selected: !showGood,
          onSelected: hasGood ? (_) => setState(() => showGood = false) : (_){},
          selectedColor: Colors.red[700],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (chips.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color.fromARGB(255, 50, 56, 70), width: 3),
              ),
            ),
            child: Row(
              children: chips
                  .map((chip) => Padding(padding: const EdgeInsets.only(right: 4), child: chip))
                  .toList(),
            ),
          ),
        if (codeToShow != null)
          CodeBlock(code: codeToShow, language: widget.language),
      ],
    );
  }
}
