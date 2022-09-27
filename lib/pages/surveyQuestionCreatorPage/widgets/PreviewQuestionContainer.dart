import 'package:flutter/material.dart';
import 'package:interview_survey_creator/pages/surveyQuestionCreatorPage/widgets/PreviewQuestionTitle.dart';
import 'package:interview_survey_creator/services/SurveyService.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';

class PreviewQuestionContainer extends StatelessWidget {
  final Widget content;
  final String title;
  const PreviewQuestionContainer({
    Key? key,
    required this.content,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PreviewQuestionTitle(
          title: title,
          rank: SurveyService().survey?.questions != null ?
            SurveyService().survey!.questions.length + 1 : 1
        ),
        const SizedBox(height: 16),
        content,
        const SizedBox(height: 24),
        const Divider(
          color: BrandedColors.primary500,
          thickness: 1
        )
      ],
    );
  }
}
