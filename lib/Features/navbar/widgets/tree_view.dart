import 'package:flutter/material.dart';

class FolderWidget extends StatelessWidget {
  final String name;
  final List<Widget>? children;
  final int depth;
  const FolderWidget({
    required this.name,
    this.children,
    this.depth = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: false,
        tilePadding: EdgeInsets.only(left: depth * 16.0),
        childrenPadding: EdgeInsets.only(left: (depth + 1) * 16.0),
        title: Row(
          children: [
            TreeLinesWidget(depth: depth),
            const Icon(Icons.folder, size: 16, color: Colors.blueAccent),
            const SizedBox(width: 8),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        children: children ?? [],
      ),
    );
  }
}

// Reusable File widget
class FileWidget extends StatelessWidget {
  final String name;
  final int depth;
  const FileWidget({required this.name, this.depth = 1, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: depth * 16.0),
      child: Row(
        children: [
          TreeLinesWidget(depth: depth),
          const Icon(Icons.insert_drive_file, size: 16, color: Colors.grey),
          const SizedBox(width: 8),
          Text(name, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

// Tree lines widget
class TreeLinesWidget extends StatelessWidget {
  final int depth;
  const TreeLinesWidget({required this.depth, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(depth, (index) {
        return Container(
          width: 12,
          height: 24,
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.grey, width: 1),
            ),
          ),
        );
      }),
    );
  }
}
