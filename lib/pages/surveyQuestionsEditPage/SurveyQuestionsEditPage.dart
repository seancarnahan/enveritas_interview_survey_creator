import 'package:flutter/material.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/widgets/scaffold/EnvScaffold.dart';
import 'package:interview_survey_creator/widgets/scaffold/models/ScaffoldActionIcons.dart';

import 'models/SurveyQuestionsEditPageArgs.dart';


// TODO: Refactor -> would prefer to use a modal here
// TODO: Refactor: Not Fullscreen modal for Desktop
class SurveyQuestionsEditPage extends StatelessWidget {
  const SurveyQuestionsEditPage({Key? key}) : super(key: key);

  static const routeName = '/surveyQuestions-edit';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SurveyQuestionsEditPageArgs;

    return EnvScaffold(
      topLeftActionIcon: ScaffoldActionsIcons.Exit,
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
        children: [
          Text('data')
        ],
      ),
    );
  }
}
