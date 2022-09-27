import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/services/NavigationService.dart';
import 'package:interview_survey_creator/services/SurveyService.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/widgets/scaffold/EnvScaffold.dart';
import 'package:interview_survey_creator/widgets/scaffold/models/ScaffoldActionIcons.dart';

import '../../widgets/shared/SurveyNoQuestions.dart';
import 'widgets/SurveyQuestions.dart';
import 'widgets/SurveyQuestionsActionControls.dart';
import 'widgets/SurveyQuestionsHeaderCard.dart';

class SurveyQuestionsPage extends StatelessWidget {
  const SurveyQuestionsPage({Key? key}) : super(key: key);

  static const routeName = '/surveyQuestions';

  @override
  Widget build(BuildContext context) {
    // Redirect back if survey is not set in Singleton
    if (SurveyService().getSurvey() == null) {
      NavigationService.navigateBack(context);
    }
    Survey survey = SurveyService().getSurvey()!;
    Widget questionsWidget = survey.questions.isEmpty ? const SurveyNoQuestions() : SurveyQuestions(survey: survey);

    return EnvScaffold(
      topLeftActionIcon: ScaffoldActionsIcons.BackArrow,
      topRightAction: GestureDetector(
        child: const Icon(
          Icons.import_export,
          size: 36,
          color: BrandedColors.primary500
        ),
        onTap: () {
          // TODO export modal
        },
      ),
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
