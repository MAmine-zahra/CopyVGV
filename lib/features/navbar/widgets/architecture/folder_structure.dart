import 'package:flutter/material.dart';

import '../reusable_widgets/tree_view.dart';

class FolderStructureWidget extends StatelessWidget {
  const FolderStructureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 1, 22, 39),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FolderWidget(
            name: "api/",
            children: [
              FolderWidget(
                name: "routes/",
                children: [
                  FolderWidget(
                    name: "api/",
                    children: [
                      FolderWidget(
                        name: "v1/",
                        children: [FolderWidget(name: "todos/", children: [])],
                      ),
                      FileWidget(name: "_middleware.dart"),
                    ],
                  ),
                ],
              ),
              FolderWidget(
                name: "test/",
                children: [
                  FolderWidget(
                    name: "routes/",
                    children: [
                      FolderWidget(
                        name: "api/",
                        children: [
                          FolderWidget(
                            name: "v1/",
                            children: [
                              FolderWidget(name: "todos/", children: []),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              FolderWidget(name: "packages/",children: [
                FolderWidget(name: "models/",children: [
                  FolderWidget(name: "lib/",children: [
                    FolderWidget(name: "src/",children: [
                      FolderWidget(name: "endpoint_models/"),
                      FolderWidget(name: "shared_models/")
                    ],)
                  ],),
                  FolderWidget(name: "test/",children: [
                    FolderWidget(name: "src/",children: [
                      FolderWidget(name: "endpoint_models/"),
                      FolderWidget(name: "shared_models/")
                    ],)
                  ],)
                ],),
                FolderWidget(name: "data_source/",children: [
                  FolderWidget(name: "lib/",children: [
                    FolderWidget(name: "src/",children: [
                    ],)
                  ],),
                  FolderWidget(name: "test/",children: [
                    FolderWidget(name: "src/",children: [
                    ],)
                  ],),
              ],)
            ],
          ),
        ],
      ),
    ])
    );
  }
}
