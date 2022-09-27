import 'package:flutter/material.dart';
import 'package:interview_survey_creator/widgets/scaffold/EnvScaffold.dart';
import 'package:interview_survey_creator/widgets/scaffold/models/ScaffoldActionIcons.dart';

import 'models/SurveyQuestionsEditPageArgs.dart';


// TODO: Refactor -> would prefer to use a modal here
class SurveyQuestionsEditPage extends StatelessWidget {
  const SurveyQuestionsEditPage({Key? key}) : super(key: key);

  static const routeName = '/surveyQuestions-edit';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SurveyQuestionsEditPageArgs;

    return Scaffold(
      body: EnvScaffold(
        topLeftActionIcon: ScaffoldActionsIcons.Exit,
        pageContent: Column(
          children: [
            Text('data')
          ],
        ),
      ),
    );
  }
}
