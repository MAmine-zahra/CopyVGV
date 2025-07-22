import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  final String note;

  const NoteWidget({super.key, required this.note});
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
            Text(
              note,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
