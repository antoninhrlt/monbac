import 'package:flutter/material.dart';
import 'package:monbac/grades/grade.dart';
import 'package:monbac/grades/subjects.dart';
import 'package:monbac/views/subviews/add_grade.dart';
import 'package:monbac/views/subviews/grades.dart';
import 'package:monbac/views/widgets/grade.dart';
import 'package:monbac/views/widgets/navigator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradesView(
            grades: [
              // Example, will be trashed
              GradeWidget(
                subject: Subject.mathematics,
                exam: "Les fonctions dérivées",
                grade:
                    Grade(nominator: 12.0, denominator: 20.0, coefficient: 1.0),
              ),
              GradeWidget(
                subject: Subject.svt,
                exam: "Les cailloux",
                grade:
                    Grade(nominator: 14.0, denominator: 30.0, coefficient: 2.0),
              ),
            ],
          ),
          NavigatorWidget(
            navigateTo: AddGradeView(),
            icon: const Icon(Icons.add),
            label: "Ajouter une note",
          ),
        ],
      ),
    );
  }
}
