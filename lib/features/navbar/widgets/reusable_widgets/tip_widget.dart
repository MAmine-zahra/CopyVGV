import 'package:flutter/material.dart';
import 'subsection_widget.dart' ;
class TipWidget extends StatelessWidget {
  final String tip;
  final String code;
  const TipWidget({super.key, required this.tip, required this.code});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 189 , 83, 238),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tip:',
                style: TextStyle(
                  color: Color.fromARGB(255, 235 , 204, 250),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                tip,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 8),
            SubsectionWidget(code: code ,)
          ],
        ),
      ),
    );
  }
}
