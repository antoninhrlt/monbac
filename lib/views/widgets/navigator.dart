import 'package:flutter/material.dart';

class NavigatorWidget extends StatelessWidget {
  Widget navigateTo;
  Icon icon;
  String label;

  NavigatorWidget({
    super.key,
    required this.navigateTo,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => navigateTo)),
      icon: icon,
      label: Text(label),
    );
  }
}
