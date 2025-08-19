import 'package:flutter/material.dart';

class DangerWidget extends StatelessWidget {
  final String danger;

  const DangerWidget({super.key, required this.danger});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 78, 34, 50),
        border: Border(
          left: BorderSide(color: Color.fromARGB(255, 238, 83, 137), width: 4),
        ),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Danger',
                style: TextStyle(
                  color: Color.fromARGB(255, 249 , 195, 214),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                danger,
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
