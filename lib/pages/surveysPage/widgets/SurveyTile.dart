import 'package:flutter/material.dart';
import 'package:interview_survey_creator/constants/DesktopContstraints.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/services/NavigationService.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/styles/BrandedTextStyle.dart';
import 'package:interview_survey_creator/widgets/cards/EnvCard.dart';

class SurveyTile extends StatelessWidget {
  final Survey survey;
  const SurveyTile({Key? key, required this.survey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = survey.name;
    String numQuestions = '${survey.questions.length} Questions';
    String languages = survey.languages.join(', ');
    bool isMobile = MediaQuery.of(context).size.width < MobileBreakpoint;
    Color nameColor = BrandedColors.primary500;
    TextStyle nameStyle = isMobile ? BrandedTextStyle.b2Label(nameColor)
      : BrandedTextStyle.b1Reg(nameColor);

    return EnvCard(
      minHeight: 75,
      onTap: () {
        NavigationService.navigateToSurveyQuestionsPage(context, survey);
      },
      content: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: nameStyle),
                Text(numQuestions, style: BrandedTextStyle.b2LabelBold(BrandedColors.black500)),
              ],
            ),
            const SizedBox(height: 8),
            Text(languages, style: BrandedTextStyle.b3Legal(BrandedColors.gray500)),
          ],
        ),
      )
    );
  }
}
