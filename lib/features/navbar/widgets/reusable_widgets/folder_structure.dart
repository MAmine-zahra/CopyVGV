import 'package:flutter/material.dart';

import 'tree_view.dart';

//Architecture TreeView
class ArchFolderStructureWidget extends StatelessWidget {
  const ArchFolderStructureWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 1, 22, 39),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FolderWidget(
            name: "my_app/",
            children: [
              FolderWidget(
                name: "lib/",
                children: [
                  FolderWidget(
                    name: "login/",
                    children: [
                      FolderWidget(
                        name: "bloc/",
                        children: [
                          FileWidget(name: "login_bloc.dart"),
                          FileWidget(name: "login_event.dart"),
                          FileWidget(name: "login_state.dart"),
                        ],
                      ),
                      FolderWidget(
                        name: "view/",
                        children: [
                          FileWidget(name: "login_page.dart"),
                          FileWidget(name: "view.dart"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              FolderWidget(
                name: "packages/",
                children: [
                  FolderWidget(
                    name: "user_repository/",
                    children: [
                      FolderWidget(
                        name: "lib/",
                        children: [
                          FolderWidget(
                            name: "src/",
                            children: [
                              FolderWidget(
                                name: "models/",
                                children: [
                                  FileWidget(name: "models.dart"),
                                  FileWidget(name: "user.dart"),
                                ],
                              ),
                              FileWidget(name: "user_repository.dart"),
                            ],
                          ),
                          FileWidget(name: "user_repository.dart"),
                        ],
                      ),
                      FolderWidget(
                        name: "test/",
                        children: [
                          FolderWidget(
                            name: "models/",
                            children: [FileWidget(name: "user_test.dart")],
                          ),
                          FileWidget(name: "user_repository_test.dart"),
                        ],
                      ),
                    ],
                  ),
                  FolderWidget(
                    name: "api_client/",
                    children: [
                      FolderWidget(
                        name: "lib/",
                        children: [
                          FolderWidget(
                            name: "src/",
                            children: [FileWidget(name: "api_client.dart")],
                          ),
                          FileWidget(name: "api_client.dart"),
                        ],
                      ),
                      FolderWidget(
                        name: "test/",
                        children: [FileWidget(name: "api_client_test.dart")],
                      ),
                    ],
                  ),
                ],
              ),
              FolderWidget(
                name: "test/",
                children: [
                  FolderWidget(
                    name: "login/",
                    children: [
                      FolderWidget(
                        name: "bloc/",
                        children: [
                          FileWidget(name: "login_bloc_test.dart"),
                          FileWidget(name: "login_event_test.dart"),
                          FileWidget(name: "login_state_test.dart"),
                        ],
                      ),
                      FolderWidget(
                        name: "view/",
                        children: [
                          FileWidget(name: "login_page_test.dart"),
                          FileWidget(name: "view_test.dart"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Backend Architecture TreeView
class BackArchFolderStructureWidget extends StatelessWidget {
  const BackArchFolderStructureWidget({super.key});

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
              FolderWidget(
                name: "packages/",
                children: [
                  FolderWidget(
                    name: "models/",
                    children: [
                      FolderWidget(
                        name: "lib/",
                        children: [
                          FolderWidget(
                            name: "src/",
                            children: [
                              FolderWidget(name: "endpoint_models/"),
                              FolderWidget(name: "shared_models/"),
                            ],
                          ),
                        ],
                      ),
                      FolderWidget(
                        name: "test/",
                        children: [
                          FolderWidget(
                            name: "src/",
                            children: [
                              FolderWidget(name: "endpoint_models/"),
                              FolderWidget(name: "shared_models/"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  FolderWidget(
                    name: "data_source/",
                    children: [
                      FolderWidget(
                        name: "lib/",
                        children: [FolderWidget(name: "src/", children: [])],
                      ),
                      FolderWidget(
                        name: "test/",
                        children: [FolderWidget(name: "src/", children: [])],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
