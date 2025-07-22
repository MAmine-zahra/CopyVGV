import 'package:flutter/material.dart';
import 'Features/navbar/widgets/welcome_content.dart';
import 'assets_name.dart';
import 'Features/navbar/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? selectedSubItem;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
      ),
      home: const MyHomePage(title: 'VGV Engineering'),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Main Page
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Widget _currentContent = const WelcomeContent();
  String? _activeSubItemId;

  void _incrementCounter() => setState(() => _counter++);
  void _updateContent(Widget content,) {
    setState(() {
      _currentContent = content;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 38, 51),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: GestureDetector(
            onTap: () => _updateContent(const WelcomeContent()),
            child: Image.asset(vgvLogo),
          ),
        ),
        toolbarHeight: 64,
        title: Row(
          children: [
            Text(
              widget.title,
              style: TextStyle(color: Color.fromARGB(255, 180, 200, 248)),
            ),
            SizedBox(width: 24),
            SizedBox(
              height: 40,
              child: SearchBar(
                hintText: "Search for a theme",
                shape: WidgetStatePropertyAll<OutlinedBorder>(
                  RoundedRectangleBorder(),
                ),
                constraints: const BoxConstraints(maxWidth: 350),
              ),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          CustomNavbar(
            onItemSelected: _updateContent,
            activeItemId: _activeSubItemId
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 200),
              color: Color.fromARGB(255, 33, 38, 51),
              child: _currentContent is WelcomeContent
                ? WelcomeContent(onItemSelected: _updateContent)
                : _currentContent,
            ),
          ),
          Container(
            width: 500,
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: Color.fromARGB(255, 50, 56, 70))
                )
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
