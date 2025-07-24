import 'package:flutter/material.dart';
import 'package:new_app/Features/navbar/widgets/very_good_engineering/our_philosophy.dart';
import 'reusable_widgets/navbar_item.dart';


class WelcomeContent extends StatelessWidget {
  final void Function(Widget)? onItemSelected;
  const WelcomeContent({super.key, this.onItemSelected});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to Very Good Engineering',
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
          ),
        ],
      ),
    );
  }
}
