import 'package:flutter/material.dart';
import 'package:interview_survey_creator/constants/DesktopContstraints.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsPage/widgets/SurveyQuestionsActionControl.dart';
import 'package:interview_survey_creator/services/NavigationService.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';

class SurveyQuestionsActionControls extends StatelessWidget {
  final Survey survey;
  const  SurveyQuestionsActionControls({Key? key, required this.survey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < MobileBreakpoint;
    double iconSize = isMobile ? 32 : 36;
    double spacer = isMobile ? 8 : 16;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SurveyQuestionsActionControl(
              icon: Icons.remove_red_eye,
              text: 'Preview',
              onTap: () {
                // TODO: Preview Entire Survey Example
              },
            ),
            SizedBox(width: spacer),
            SurveyQuestionsActionControl(
              icon: Icons.edit,
              text: 'Edit',
              onTap: () {
                NavigationService.navigateToSurveyQuestionsEditPage(context, survey);
              },
            ),
          ],
        ),
        GestureDetector(
          child: Icon(
            Icons.import_export,
            size: iconSize,
            color: BrandedColors.primary500
          ),
          onTap: () {
            // TODO export modal
          },
        )
      ],
    );
  }
}
