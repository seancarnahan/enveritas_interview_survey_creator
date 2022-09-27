import 'package:flutter/material.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/widgets/scaffold/EnvScaffold.dart';

import 'widgets/Searchbar.dart';
import 'widgets/SurveyTiles.dart';

class SurveysPage extends StatelessWidget {
  const SurveysPage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EnvScaffold(
        topRightAction: GestureDetector(
          onTap: () => {
            // open modal to get survey name and exportable languages
            // then route to Page
          },
          child: const Icon(
            Icons.add,
            size: 32,
            color: BrandedColors.black500,
          ),
        ),
        pageContent: Column(
          children: const [
            Searchbar(),
            SizedBox(height: 32),
            SurveyTiles()
          ],
        ),
      ),
    );
  }
}