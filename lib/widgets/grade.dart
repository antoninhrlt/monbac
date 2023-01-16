import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monbac/grades/grade.dart';
import 'package:monbac/grades/subjects.dart';
import 'package:monbac/theme/colours.dart' as colours;

class GradeWidget extends StatelessWidget {
  final Subject subject;
  final String exam;
  final Grade grade;

  const GradeWidget({
    super.key,
    required this.subject,
    required this.exam,
    required this.grade,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    subject.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(exam),
                ],
              ),
            ),
            Column(
              children: [
                Text(grade.toString()),
                Text(
                  "x${grade.coefficient}",
                  style: const TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
