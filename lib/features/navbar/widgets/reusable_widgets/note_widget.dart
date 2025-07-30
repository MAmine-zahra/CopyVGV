import 'package:flutter/material.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/subsection_widget.dart';

class NoteWidget extends StatelessWidget {
  final String note;
  final List<String> bulletPoints;
  final String? code;

  const NoteWidget({super.key, required this.note,required this.bulletPoints, required this.code});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 23, 29, 79),
        border: Border(
          left: BorderSide(color: Color.fromARGB(255, 51, 71, 255), width: 4),
        ),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Note:',
                style: TextStyle(
                  color: Color.fromARGB(255, 189, 195, 255),
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
            ),
            SizedBox(height: 8,),
             code == '' ? const SizedBox.shrink() : SubsectionWidget(code: code ,)
          ],
        ),
      ),
    );
  }
}
