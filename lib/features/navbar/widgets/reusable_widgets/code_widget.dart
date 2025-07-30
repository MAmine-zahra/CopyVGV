import 'package:flutter/material.dart';
import 'package:highlight/highlight.dart' show highlight, Node;

class CodeBlock extends StatelessWidget {
  final String code;
  final String language;

  const CodeBlock({
    super.key,
    required this.code,
    this.language = 'dart', // default to Dart
  });

  @override
  Widget build(BuildContext context) {
    // Get syntax highlighting spans
    final highlighted = highlight.parse(code, language: language, autoDetection: false);

    return Container(
      padding: const EdgeInsets.all(12),
      color: Color.fromARGB(255, 33, 38, 51),
      width: double.infinity,
      child: SelectableText.rich(
        TextSpan(
          style: const TextStyle(fontFamily: 'monospace', color: Colors.white),
          children: highlighted.nodes!.map((node) => _convert(node)).toList(),
        ),
      ),
    );
  }

  TextSpan _convert(Node node) {
    if (node.value != null) {
      return TextSpan(text: node.value, style: _styleFor(node.className));
    } else if (node.children != null) {
      return TextSpan(
        children: node.children!.map((child) => _convert(child)).toList(),
      );
    }
    return const TextSpan(text: '');
  }

  TextStyle _styleFor(String? className) {
    switch (className) {
      case 'keyword':
        return const TextStyle(color: Color(0xFFc792ea));
      case 'string':
        return const TextStyle(color: Color(0xFFecc48d));
      case 'number':
        return const TextStyle(color: Color(0xFFf78c6c));
      case 'comment':
        return const TextStyle(color: Color(0xFF546e7a), fontStyle: FontStyle.italic);
      case 'type':
        return const TextStyle(color: Color(0xFF82aaff));
      case 'function':
        return const TextStyle(color: Color(0xFF82aaff));
      default:
        return const TextStyle(); // Default white
    }
  }
}
