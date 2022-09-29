import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/widgets/button/EnvGestureDetector.dart';
import 'package:interview_survey_creator/services/NavigationService.dart';
import 'package:interview_survey_creator/providers/SurveyProvider.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/widgets/scaffold/EnvScaffold.dart';
import 'package:interview_survey_creator/widgets/shared/SurveyNoQuestions.dart';

// TODO: Refactor -> would prefer to use a modal here
// TODO: Refactor: Not Fullscreen modal for Desktop
class SurveyQuestionsEditPage extends StatelessWidget {
  const SurveyQuestionsEditPage({Key? key}) : super(key: key);

  static const routeName = '/surveyQuestions-edit';

  @override
  Widget build(BuildContext context) {
    // Redirect back if survey is not set in Singleton
    if (SurveyProvider().getSurvey() == null) {
      NavigationService.navigateBack(context);
    }
    Survey survey = SurveyProvider().getSurvey()!;
    Widget questionsWidget = survey.questions.isEmpty ? const SurveyNoQuestions() : Text('TODO Draggable questions');

    return EnvScaffold(
      topRightAction: EnvGestureDetector(
        onTap: () => NavigationService.navigateBack(context),
        child: const Icon(
          Icons.clear,
          size: 32,
          color: BrandedColors.primary500
        )
      ),
      pageContent: questionsWidget,
    );
  }
}
