import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsPage/widgets/SurveyQuestionsHeaderCard.dart';
import 'package:interview_survey_creator/widgets/scaffold/EnvScaffold.dart';

import 'models/SurveyQuestionsPageArgs.dart';

class SurveyQuestionsPage extends StatelessWidget {
  const SurveyQuestionsPage({Key? key}) : super(key: key);

  static const routeName = '/surveyQuestions';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SurveyQuestionsPageArgs;
    final Survey survey = args.survey;

    return Scaffold(
      body: EnvScaffold(
        hasBackArrow: true,
        pageContent: Column(
          children: [
            SurveyQuestionsHeaderCard(survey: survey)
          ],
        ),
      ),
    );
  }
}
