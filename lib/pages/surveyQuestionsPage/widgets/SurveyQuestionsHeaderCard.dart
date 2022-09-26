import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/styles/BrandedTextStyle.dart';
import 'package:interview_survey_creator/widgets/cards/EnvCard.dart';

class SurveyQuestionsHeaderCard extends StatelessWidget {
  final Survey survey;
  const SurveyQuestionsHeaderCard({Key? key, required this.survey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = survey.name;
    String numQuestions = '${survey.questions.length} Questions';
    String languages = survey.languages.join(', ');

    return EnvCard(
      minHeight: 92,
      hasBorder: false,
      color: BrandedColors.secondary500,
      content: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: BrandedTextStyle.b1Reg(BrandedColors.primary500)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(languages, style: BrandedTextStyle.b3Legal(BrandedColors.gray500)),
                Text(numQuestions, style: BrandedTextStyle.b2LabelBold(BrandedColors.black500)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
