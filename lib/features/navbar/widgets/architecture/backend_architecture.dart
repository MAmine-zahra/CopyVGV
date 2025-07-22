import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/subsection_widget.dart';
import 'package:new_app/Features/navbar/widgets/reusable_widgets/text_placers.dart';
import 'package:new_app/features/navbar/widgets/reusable_widgets/code_widget.dart';
import '../../domain/backend_architecture_models.dart';
import 'folder_structure.dart';

class ArchitectureContent extends StatelessWidget {
  const ArchitectureContent({super.key});

  Future<BackendArchitectureModel> loadJsonData() async {
    final String response = await rootBundle.loadString(
      'assets/data/backend_architecture_data.json',
    );
    final Map<String, dynamic> jsonData = json.decode(response);
    return BackendArchitectureModel.fromJson(jsonData);
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
                  return FolderStructureWidget();
                case "code":
                  return CodeBlock(
                    code: item.code ?? '_',
                  );
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
