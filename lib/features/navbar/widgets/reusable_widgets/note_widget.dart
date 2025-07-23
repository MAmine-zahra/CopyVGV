import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  final String note;
  final List<String> bulletPoints;

  const NoteWidget({super.key, required this.note,required this.bulletPoints});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 23, 29, 79),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Note:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                note,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: bulletPoints
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
            )
          ],
        ),
      ),
    );
  }
}
