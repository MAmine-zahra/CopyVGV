import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/subsection_widget.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/text_placers.dart';
import '../../domain/info_json_model.dart';


class Contributing extends StatelessWidget {
  const Contributing({super.key});

  Future<DataJsonModel> loadJsonData() async {
    final String response = await rootBundle.loadString(
      'assets/data/contributing_data.json',
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
                case "image":
                  return SubsectionWidget(image: item.image ?? '_');
                case "subtitle":
                  return SubsectionWidget(subtitle: item.text ?? '_');
                case "text":
                  return SubsectionWidget(textItems: [item.text ?? '_']);
                case "bulletPoints":
                  return SubsectionWidget(bulletPoints: item.points ?? []);
                case "code":
                  return SubsectionWidget(code: item.code ?? '_');
                case "note":
                  return SubsectionWidget(note: item.note ?? '_', notePoints : item.notePoints ?? [], noteCode: item.code ?? '',);
                case "code3":
                  return SubsectionWidget(imperativeCode: item.imperative ?? '_', declarativeCode: item.declarative ?? '_');
                case "tip":
                  return SubsectionWidget(tip: item.tip ?? '_', code: item.code ?? '');
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
