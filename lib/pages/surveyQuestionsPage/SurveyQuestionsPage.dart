import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/widgets/scaffold/EnvScaffold.dart';
import 'package:interview_survey_creator/widgets/scaffold/models/ScaffoldActionIcons.dart';

import 'models/SurveyQuestionsPageArgs.dart';
import '../../widgets/shared/SurveyNoQuestions.dart';
import 'widgets/SurveyQuestions.dart';
import 'widgets/SurveyQuestionsActionControls.dart';
import 'widgets/SurveyQuestionsHeaderCard.dart';

class SurveyQuestionsPage extends StatelessWidget {
  const SurveyQuestionsPage({Key? key}) : super(key: key);

  static const routeName = '/surveyQuestions';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SurveyQuestionsPageArgs;
    final Survey survey = args.survey;
    Widget questionsWidget = survey.questions.isEmpty ? const SurveyNoQuestions() : SurveyQuestions(survey: survey);

    return EnvScaffold(
      topLeftActionIcon: ScaffoldActionsIcons.BackArrow,
      pageContent: Column(
        children: [
          SurveyQuestionsHeaderCard(survey: survey),
          const SizedBox(height: 32),
          SurveyQuestionsActionControls(survey: survey),
          questionsWidget
        ],
      ),
    );
  }
}
