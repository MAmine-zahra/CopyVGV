import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/subsection_widget.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/text_placers.dart';
import '../../domain/info_json_model.dart';
import '../reusable_widgets/folder_structure.dart';

class ErrorHandlingContent extends StatelessWidget {
  const ErrorHandlingContent({super.key});

  Future<DataJsonModel> loadJsonData() async {
    final String response = await rootBundle.loadString(
      'assets/data/error_handling_data.json',
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
                case "subtitle":
                  return SubsectionWidget(subtitle: item.text ?? '_');
                case "text":
                  return SubsectionWidget(textItems: [item.text ?? '_']);
                case "bulletPoints":
                  return SubsectionWidget(bulletPoints: item.points ?? []);
                case "folderStructure":
                  return BackArchFolderStructureWidget();
                case "code":
                  return SubsectionWidget(code: item.code ?? '_');
                case "note":
                  return SubsectionWidget(note: item.note ?? '_', notePoints : item.notePoints ?? []);
                case "code2":
                  return SubsectionWidget(goodCode: item.goodCode ?? '_', badCode: item.badCode ?? '_');
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
