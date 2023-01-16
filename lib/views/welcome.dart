import 'package:flutter/material.dart';
import 'package:monbac/views/home.dart';
import 'package:monbac/widgets/skip_button.dart';

// The view displayed at the first connection.
// Displays an overview of the application's possibilities.
// It can be skipped.
class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/logo/text2.png', height: 200.0),
          Center(
            child: Text(
              'Bienvenue sur Mon BAC !',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const Center(
            child: Text(
              'L\'appli pour calculer sa note au BAC',
              textAlign: TextAlign.center,
            ),
          ),
          SkipButton.withLabel(label: 'Suivant', navigateTo: HomeView()),
        ],
      ),
    );
  }
}
