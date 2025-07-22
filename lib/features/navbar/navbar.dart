import 'package:flutter/material.dart';
import 'package:new_app/Features/navbar/widgets/Architecture/architecture.dart';
import 'package:new_app/Features/navbar/widgets/Architecture/backend_architecture.dart';
import 'package:new_app/Features/navbar/widgets/Architecture/barrel_files.dart';
import 'package:new_app/Features/navbar/widgets/Automation/cicd.dart';
import 'package:new_app/Features/navbar/widgets/Code%20Review/code_reviews.dart';
import 'package:new_app/Features/navbar/widgets/Code%20Style/code_style.dart';
import 'package:new_app/Features/navbar/widgets/Documentation/documentation.dart';
import 'package:new_app/Features/navbar/widgets/Error%20Handling/error_handling.dart';
import 'package:new_app/Features/navbar/widgets/Examples/airplane_entertainment_system.dart';
import 'package:new_app/Features/navbar/widgets/Examples/financial_dashboard.dart';
import 'package:new_app/Features/navbar/widgets/Examples/vehicule_cockpit.dart';
import 'package:new_app/Features/navbar/widgets/Internalization/localization.dart';
import 'package:new_app/Features/navbar/widgets/Internalization/text_directionality.dart';
import 'package:new_app/Features/navbar/widgets/Navigation/routing_overview.dart';
import 'package:new_app/Features/navbar/widgets/Security/security_mobile_apps.dart';
import 'package:new_app/Features/navbar/widgets/State%20Management/state_handling.dart';
import 'package:new_app/Features/navbar/widgets/Testing/golden_file_testing.dart';
import 'package:new_app/Features/navbar/widgets/Testing/testing_overview.dart';
import 'package:new_app/Features/navbar/widgets/Theming/theming.dart';
import 'package:new_app/Features/navbar/widgets/Widgets/layouts.dart';
import 'package:new_app/Features/navbar/widgets/Widgets/widgets.dart';
import 'package:new_app/Features/navbar/widgets/bloc_event_transformers.dart';
import 'package:new_app/Features/navbar/widgets/Very%20Good%20Engineering/contributing.dart';
import 'package:new_app/Features/navbar/widgets/Very%20Good%20Engineering/conventions.dart';
import 'package:new_app/Features/navbar/widgets/Very%20Good%20Engineering/credits.dart';
import 'package:new_app/Features/navbar/widgets/Very%20Good%20Engineering/glossary.dart';
import 'package:new_app/Features/navbar/widgets/Very%20Good%20Engineering/our_philosophy.dart';
import 'package:new_app/Features/navbar/widgets/Very%20Good%20Engineering/services.dart';
import 'widgets/navbar_item.dart';
import 'package:new_app/assets_name.dart';

class CustomNavbar extends StatelessWidget {
  final Function(Widget)? onItemSelected;
  final String? activeItemId;

  const CustomNavbar({super.key, this.onItemSelected, this.activeItemId});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Color.fromARGB(255, 50, 56, 70)),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SideMainItem(
              icon: veryGoodEngineering,
              title: "Very Good Engineering",
              childrens: [
                SideSubItem(
                  title: "Our Philosophy",
                  onTap: () => onItemSelected?.call(const OurPhilosophy()),
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
              ],
            ),
            SideMainItem(
              icon: architecture,
              title: "Architecture",
              childrens: [
                SideSubItem(
                  title: "Architecture",
                  onTap: () => onItemSelected?.call(const Architecture()),
                ),
                SideSubItem(
                  title: "Backend Architecture",
                  onTap: () =>
                      onItemSelected?.call(const ArchitectureContent()),
                ),
                SideSubItem(
                  title: "Barrel Files",
                  onTap: () => onItemSelected?.call(const BarrelFiles()),
                ),
              ],
            ),
            SideMainItem(
              icon: automation,
              title: "Automation",
              childrens: [
                SideSubItem(
                  title: "CI/CD",
                  onTap: () => onItemSelected?.call(const CICD()),
                ),
              ],
            ),
            SideMainItem(
              icon: codeStyle,
              title: "Code Style",
              childrens: [
                SideSubItem(
                  title: "Code Style",
                  onTap: () => onItemSelected?.call(const CodeStyleContent()),
                ),
              ],
            ),
            SideMainItem(
              icon: codeReview,
              title: "Code Review",
              childrens: [
                SideSubItem(
                  title: "Code Reviews",
                  onTap: () => onItemSelected?.call(const CodeReviews()),
                ),
              ],
            ),
            SideMainItem(
              icon: documentation,
              title: "Documentation",
              childrens: [
                SideSubItem(
                  title: "Documentation",
                  onTap: () =>
                      onItemSelected?.call(const DocumentationContent()),
                ),
              ],
            ),
            SideMainItem(
              icon: errorHandling,
              title: "Error Handling",
              childrens: [
                SideSubItem(
                  title: "Error Handling",
                  onTap: () =>
                      onItemSelected?.call(const ErrorHandlingContent()),
                ),
              ],
            ),
            SideMainItem(
              icon: examples,
              title: "Examples",
              childrens: [
                SideSubItem(
                  title: "Airplane Entertainment System",
                  onTap: () =>
                      onItemSelected?.call(const AirplaneEntertainmentSystem()),
                ),
                SideSubItem(
                  title: "Financial Dashboard",
                  onTap: () => onItemSelected?.call(const FinancialDashboard()),
                ),
                SideSubItem(
                  title: "Vehicule Cockpit",
                  onTap: () => onItemSelected?.call(const VehiculeCockpit()),
                ),
              ],
            ),
            SideMainItem(
              icon: internationalization,
              title: "Internationalization",
              childrens: [
                SideSubItem(
                  title: "Localization",
                  onTap: () =>
                      onItemSelected?.call(const LocalizationContent()),
                ),
                SideSubItem(
                  title: "Text Directionality",
                  onTap: () =>
                      onItemSelected?.call(const TextDirectionalityContent()),
                ),
              ],
            ),
            SideMainItem(
              icon: navigation,
              title: "Navigation",
              childrens: [
                SideSubItem(
                  title: "Routing Overview",
                  onTap: () => onItemSelected?.call(const RoutingOverview()),
                ),
              ],
            ),
            SideMainItem(
              icon: security,
              title: "Security",
              childrens: [
                SideSubItem(
                  title: "Security in mobile apps",
                  onTap: () =>
                      onItemSelected?.call(const SecurityInMobileApps()),
                ),
              ],
            ),
            SideMainItem(
              icon: stateManagement,
              title: "State Management",
              childrens: [
                SideSubItem(
                  title: "Bloc Event Transformers",
                  onTap: () =>
                      onItemSelected?.call(const BlocEventTransformers()),
                ),
                SideSubItem(
                  title: "State Handling",
                  onTap: () => onItemSelected?.call(const StateHandling()),
                ),
              ],
            ),
            SideMainItem(
              icon: testing,
              title: "Testing",
              childrens: [
                SideSubItem(
                  title: "Testing Overview",
                  onTap: () => onItemSelected?.call(const TestingOverview()),
                ),
                SideSubItem(
                  title: "Golden File Testing",
                  onTap: () => onItemSelected?.call(const GoldenFileTesting()),
                ),
              ],
            ),
            SideMainItem(
              icon: theming,
              title: "Theming",
              childrens: [
                SideSubItem(
                  title: "Theming",
                  onTap: () => onItemSelected?.call(const ThemingContent()),
                ),
              ],
            ),
            SideMainItem(
              icon: widgets,
              title: "Widgets",
              childrens: [
                SideSubItem(
                  title: "Widgets",
                  onTap: () => onItemSelected?.call(const WidgetsContent()),
                ),
                SideSubItem(
                  title: "Layouts",
                  onTap: () => onItemSelected?.call(const LayoutsContent()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
