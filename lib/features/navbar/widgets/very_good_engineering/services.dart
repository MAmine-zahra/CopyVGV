import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/subsection_widget.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/text_placers.dart';
import '../../domain/info_json_model.dart';


class Services extends StatelessWidget {
  const Services({super.key});

  Future<DataJsonModel> loadJsonData() async {
    final String response = await rootBundle.loadString(
      'assets/data/services_data.json',
    );
    final Map<String, dynamic> jsonData = json.decode(response);
    return DataJsonModel.fromJson(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
        future: loadJsonData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No data found.'));
          }

          final shownData = snapshot.data!;
          return ContentPage(
            mainTitle: shownData.mainTitle ?? '_',
            contentChildren: List.generate((shownData.content ?? []).length, (
                index,
                ) {
              final item = (shownData.content ?? [])[index];
              switch (item.type) {
                case "text":
                  return SubsectionWidget(textItems: [item.text ?? '_']);
                case "bulletPoints":
                  return SubsectionWidget(bulletPoints: item.points ?? []);
                case "spacer":
                  return const SizedBox(height: 16);
                default:
                  return const SizedBox.shrink();
              }
            }),
          );
        },
      ),
    );
  }
}
