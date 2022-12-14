import 'package:flutter/material.dart';
import 'package:interview_survey_creator/providers/AllSurveysProvider.dart';
import 'package:interview_survey_creator/services/NavigationService.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/widgets/scaffold/EnvScaffold.dart';
import 'package:interview_survey_creator/widgets/button/EnvGestureDetector.dart';
import 'package:provider/provider.dart';

import 'widgets/Searchbar.dart';
import 'widgets/SurveyTiles.dart';

class SurveysPage extends StatelessWidget {
  const SurveysPage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AllSurveysProvider(),
      child: Consumer<AllSurveysProvider>(
        builder: (context, allSurveysProvider, child) {
          return EnvScaffold(
            topRightAction: EnvGestureDetector(
              onTap: () {
                allSurveysProvider.createNewSurvey();
                NavigationService.navigateToSurveyQuestionsPage(context);
              },
              child: const Icon(
                Icons.add,
                size: 32,
                color: BrandedColors.black500,
              ),
            ),
            pageContent: Column(
                children: [
                  const Searchbar(),
                  const SizedBox(height: 32),
                  SurveyTiles(surveys: allSurveysProvider.surveys)
                ],
              )
          );
        },
      ),
    );
  }
}
