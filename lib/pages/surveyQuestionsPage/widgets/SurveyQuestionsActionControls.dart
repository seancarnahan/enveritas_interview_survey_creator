import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsPage/widgets/SurveyQuestionsActionControl.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';

class SurveyQuestionsActionControls extends StatelessWidget {
  final Survey survey;
  const SurveyQuestionsActionControls({Key? key, required this.survey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            SurveyQuestionsActionControl(
              icon: Icons.edit,
              text: 'Edit',
              onTap: () {
                // TODO: Trigger edit functionality
              },
            ),
          ],
        ),
        GestureDetector(
          child: const Icon(Icons.import_export, size: 32, color: BrandedColors.primary500),
          onTap: () {
            // TODO export modal
          },
        )
      ],
    );
  }
}
