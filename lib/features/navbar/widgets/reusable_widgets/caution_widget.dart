import 'package:flutter/material.dart';

class CautionWidget extends StatelessWidget {
  final String note;

  const CautionWidget({super.key, required this.note});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 74 , 64, 34),
        border: Border(
        left: BorderSide(color: Color.fromARGB(255, 198, 189, 83), width: 4),
      ),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Caution:',
                style: TextStyle(
                  color: Color.fromARGB(255, 249 , 232, 139),
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
          ],
        ),
      ),
    );
  }
}
