import 'package:flutter/material.dart';

// Side Navigation Bar Item
class SideMainItem extends StatefulWidget {
  final String icon;
  final String title;
  final List<Widget>? childrens; // List of SideSubItems

  const SideMainItem({
    super.key,
    required this.icon,
    required this.title,
    this.childrens,
  });

  @override
  State<SideMainItem> createState() => _SideMainItemState();
}

class _SideMainItemState extends State<SideMainItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: ExpansionTile(
        title: Row(
          children: [
            Text(widget.icon),
            const SizedBox(width: 12),
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        trailing: Icon(
          _isExpanded ? Icons.arrow_drop_down : Icons.arrow_right,
          color: Colors.white,
        ),
        childrenPadding: const EdgeInsets.only(left: 32),
        initiallyExpanded: _isExpanded,
        maintainState: true,
        onExpansionChanged: (expanded) {
          setState(() {
            _isExpanded = expanded;
          });
        },
        children: widget.childrens ?? [],
      ),
    );
  }
}

class SideSubItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback? onTap;
  const SideSubItem({
    super.key,
    required this.title,
    this.isActive = false,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16),
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.blue[200] : Colors.white70,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
class HomeButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const HomeButton({
    super.key,
    required this.title,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16),
        child:
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[700],
            borderRadius: BorderRadius.circular(4.0),
          ),
          width: 300,
          child: Center( // <-- Center the text
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
