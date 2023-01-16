import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monbac/views/widgets/navigator.dart';

/// Button to skip a view in order to navigate to another
class SkipperWidget extends NavigatorWidget {
  SkipperWidget({
    super.key,
    required super.navigateTo,
    super.icon = const Icon(Icons.skip_next_outlined),
    super.label = "Passer",
  });

  SkipperWidget.withLabel({
    super.key,
    required super.navigateTo,
    super.icon = const Icon(Icons.skip_next_outlined),
    required super.label,
  });
}
