import 'package:flutter/material.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/subsection_widget.dart';
class TipWidget extends StatelessWidget {
  final String tip;
  final String code;
  final List<String> bulletPoints;
  const TipWidget({super.key, required this.tip, required this.code, required this.bulletPoints});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 64 , 34, 78),
        border: Border(
          left: BorderSide(color: Color.fromARGB(255, 189, 83, 238), width: 4),
        ),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tip',
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
