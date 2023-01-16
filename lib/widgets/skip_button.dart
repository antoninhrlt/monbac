import 'package:flutter/material.dart';

/// Button to skip a view in order to navigate to another
class SkipButton extends StatelessWidget {
  String label = "Passer";
  Widget navigateTo;

  SkipButton({super.key, required this.navigateTo});
  SkipButton.withLabel(
      {super.key, required this.label, required this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => navigateTo)),
      icon: const Icon(Icons.skip_next_outlined),
      label: Text(label),
    );
  }
}
