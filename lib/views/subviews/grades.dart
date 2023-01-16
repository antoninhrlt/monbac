import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monbac/views/widgets/grade.dart';
import 'package:monbac/theme/colours.dart' as colours;

class GradesView extends StatelessWidget {
  final List<GradeWidget> grades;

  const GradesView({super.key, required this.grades});

  @override
  Widget build(BuildContext context) {
    var elements = <Widget>[];

    var i = 0;
    for (GradeWidget grade in grades) {
      /// The [GradeWidget] is decorated with a bottom border when it's not the
      /// last element.
      if (i != grades.length - 1) {
        elements.add(
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: colours.bluePurple)),
            ),
            child: grade,
          ),
        );
      } else {
        // The last element does not take a bottom border.
        elements.add(grade);
      }

      i += 1;
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: colours.bluePurple),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(5.0),
      child: Column(children: elements),
    );
  }
}
