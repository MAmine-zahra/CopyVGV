import 'package:flutter/material.dart';
import 'navbarItem.dart';

//Very Good Engineering Pages

//Welcome Content
class WelcomeContent extends StatelessWidget{
  final void Function(Widget)? onItemSelected;
  const WelcomeContent({super.key, this.onItemSelected});
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome to Very Good Engineering',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Select an item from the sidebar to learn more',
            style: TextStyle(color: Colors.white70),
          ),
          HomeButton(
            title: "View Our Philosophy",
            onTap: () => onItemSelected?.call(const OurPhilosophy()),
          )
        ],
      ),
    );
  }
}



//Our Philosophy
class OurPhilosophy extends StatelessWidget {
  const OurPhilosophy({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Our Philosophy Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
//Conventions
class Conventions extends StatelessWidget{
  const Conventions({super.key});
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        'Conventions Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

//Glossary
class Glossary extends StatelessWidget{
  const Glossary({super.key});
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        'Glossary Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

//Services
class Services extends StatelessWidget{
  const Services({super.key});
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        'Services Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

//Contributing
class Contributing extends StatelessWidget{
  const Contributing({super.key});
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        'Contributing Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

//Credits
class Credits extends StatelessWidget{
  const Credits({super.key});
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        'Credits Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

//Architecture Pages
//Architecture
class Architecture extends StatelessWidget{
  const Architecture({super.key});
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        'Architecture Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

//Backend-Architecture
class ArchitectureContent extends StatelessWidget{
  const ArchitectureContent({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromARGB(255, 50, 56, 70),
                    width: 1)
                )
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Backend Architecture',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ),
                SizedBox(height: 16,)
              ],
            ),
          ),
          SizedBox(height: 16),
          Text('* Clean Layer Separation\n* SOLID Principles\n* Feature-First organization',
          style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

// Barrel Files
class BarrelFiles extends StatelessWidget {
  const BarrelFiles({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Barrel Files Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// CI/CD
class CICD extends StatelessWidget {
  const CICD({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('CI/CD Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Code Style
class CodeStyleContent extends StatelessWidget {
  const CodeStyleContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Code Style Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Code Reviews
class CodeReviews extends StatelessWidget {
  const CodeReviews({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Code Reviews Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Documentation
class DocumentationContent extends StatelessWidget {
  const DocumentationContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Documentation Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Error Handling
class ErrorHandlingContent extends StatelessWidget {
  const ErrorHandlingContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Error Handling Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Airplane Entertainment System
class AirplaneEntertainmentSystem extends StatelessWidget {
  const AirplaneEntertainmentSystem({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Airplane Entertainment System Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Financial Dashboard
class FinancialDashboard extends StatelessWidget {
  const FinancialDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Financial Dashboard Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Vehicule Cockpit
class VehiculeCockpit extends StatelessWidget {
  const VehiculeCockpit({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Vehicule Cockpit Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Localization
class LocalizationContent extends StatelessWidget {
  const LocalizationContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Localization Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Text Directionality
class TextDirectionalityContent extends StatelessWidget {
  const TextDirectionalityContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Text Directionality Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Routing Overview
class RoutingOverview extends StatelessWidget {
  const RoutingOverview({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Routing Overview Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Security in mobile apps
class SecurityInMobileApps extends StatelessWidget {
  const SecurityInMobileApps({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Security in mobile apps Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Bloc Event Transformers
class BlocEventTransformers extends StatelessWidget {
  const BlocEventTransformers({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Bloc Event Transformers Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// State Handling
class StateHandling extends StatelessWidget {
  const StateHandling({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('State Handling Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Testing Overview
class TestingOverview extends StatelessWidget {
  const TestingOverview({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Testing Overview Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Golden File Testing
class GoldenFileTesting extends StatelessWidget {
  const GoldenFileTesting({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Golden File Testing Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Theming
class ThemingContent extends StatelessWidget {
  const ThemingContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Theming Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Widgets
class WidgetsContent extends StatelessWidget {
  const WidgetsContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Widgets Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}

// Layouts
class LayoutsContent extends StatelessWidget {
  const LayoutsContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Layouts Page', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}
