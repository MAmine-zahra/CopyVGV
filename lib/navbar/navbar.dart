import 'package:flutter/material.dart';
import 'package:new_app/navbar/widgets/content_widgets.dart';
import 'widgets/navbarItem.dart';
import 'package:new_app/assets_name.dart';
class CustomNavbar extends StatelessWidget{
  final Function(Widget)? onItemSelected;
  final String? activeItemId;

  const CustomNavbar({
    super.key,
    this.onItemSelected,
    this.activeItemId,
  });
  @override
  Widget build(BuildContext context){
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Color.fromARGB(255, 50, 56, 70))
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SideMainItem(icon: veryGoodEngineering, title: "Very Good Engineering",
            childrens: [
              SideSubItem(
                title: "Our Philosophy",
                onTap: () => onItemSelected?.call(const WelcomeContent()),
              ),
              SideSubItem(
                title: "Conventions",
                onTap: () => onItemSelected?.call(const Conventions()),
              ),
              SideSubItem(
                title: "Glossary",
                onTap: () => onItemSelected?.call(const Glossary()),
              ),
              SideSubItem(
                title: "Services",
                onTap: () => onItemSelected?.call(const Services()),
              ),
              SideSubItem(
                title: "Contributing",
                onTap: () => onItemSelected?.call(const Contributing()),
              ),
              SideSubItem(
                title: "Credits",
                onTap: () => onItemSelected?.call(const Credits()),
              ),
            ],),
            SideMainItem(icon: architecture, title: "Architecture",
              childrens: [
                SideSubItem(title: "Architecture", onTap: () => onItemSelected?.call(const Architecture())),
                SideSubItem(title: "Backend Architecture", onTap: () => onItemSelected?.call(const ArchitectureContent())),
                SideSubItem(title: "Barrel Files", onTap: () => onItemSelected?.call(const BarrelFiles())),
              ],
            ),
            SideMainItem(icon: automation, title: "Automation",
              childrens: [
                SideSubItem(title: "CI/CD", onTap: () => onItemSelected?.call(const CICD())),
              ],
            ),
            SideMainItem(icon: codeStyle, title: "Code Style",
            childrens: [
              SideSubItem(title: "Code Style", onTap: () => onItemSelected?.call(const CodeStyleContent()))
            ],),
            SideMainItem(icon: codeReview, title: "Code Review",
            childrens: [
              SideSubItem(title: "Code Reviews", onTap: () => onItemSelected?.call(const CodeReviews()))
            ],),
            SideMainItem(icon: documentation, title: "Documentation",
            childrens: [
              SideSubItem(title: "Documentation", onTap: () => onItemSelected?.call(const DocumentationContent())),
            ],),
            SideMainItem(icon: errorHandling, title: "Error Handling",
            childrens: [
              SideSubItem(title: "Error Handling", onTap: () => onItemSelected?.call(const ErrorHandlingContent()))
            ],),
            SideMainItem(icon: examples, title: "Examples",
            childrens: [
              SideSubItem(title: "Airplane Entertainment System", onTap: () => onItemSelected?.call(const AirplaneEntertainmentSystem())),
              SideSubItem(title: "Financial Dashboard", onTap: () => onItemSelected?.call(const FinancialDashboard())),
              SideSubItem(title: "Vehicule Cockpit", onTap: () => onItemSelected?.call(const VehiculeCockpit())),
            ],),
            SideMainItem(icon: internationalization, title: "Internationalization",
            childrens:[
              SideSubItem(title: "Localization", onTap: () => onItemSelected?.call(const LocalizationContent())),
              SideSubItem(title: "Text Directionality", onTap: () => onItemSelected?.call(const TextDirectionalityContent())),
            ]),
            SideMainItem(icon: navigation, title: "Navigation",
            childrens: [
              SideSubItem(title: "Routing Overview", onTap: () => onItemSelected?.call(const RoutingOverview()))
            ],),
            SideMainItem(icon: security, title: "Security",
            childrens: [
              SideSubItem(title: "Security in mobile apps", onTap: () => onItemSelected?.call(const SecurityInMobileApps())),
            ],),
            SideMainItem(icon: stateManagement, title: "State Management",
            childrens: [
              SideSubItem(title: "Bloc Event Transformers", onTap: () => onItemSelected?.call(const BlocEventTransformers())),
              SideSubItem(title: "State Handling", onTap: () => onItemSelected?.call(const StateHandling())),
            ],),
            SideMainItem(icon: testing, title: "Testing",
            childrens: [
              SideSubItem(title: "Testing Overview", onTap: () => onItemSelected?.call(const TestingOverview())),
              SideSubItem(title: "Golden File Testing", onTap: () => onItemSelected?.call(const GoldenFileTesting()))
            ],),
            SideMainItem(icon: theming, title: "Theming",
            childrens: [
              SideSubItem(title: "Theming", onTap: () => onItemSelected?.call(const ThemingContent()))
            ],),
            SideMainItem(icon: widgets, title: "Widgets",
            childrens: [
              SideSubItem(title: "Widgets", onTap: () => onItemSelected?.call(const WidgetsContent())),
              SideSubItem(title: "Layouts", onTap: () => onItemSelected?.call(const LayoutsContent()))
            ],),
          ],
        ),
      ),
    );
  }
}