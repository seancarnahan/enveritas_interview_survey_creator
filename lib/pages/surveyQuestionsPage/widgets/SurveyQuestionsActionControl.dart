import 'package:flutter/material.dart';
import 'package:interview_survey_creator/constants/DesktopContstraints.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/styles/BrandedTextStyle.dart';
import 'package:interview_survey_creator/widgets/cards/EnvCard.dart';

class SurveyQuestionsActionControl extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;
  const SurveyQuestionsActionControl({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < MobileBreakpoint;
    Color textColor = BrandedColors.black500;
    TextStyle textStyle = isMobile ? BrandedTextStyle.b3Label(textColor) : BrandedTextStyle.b2Reg(textColor);
    double spacer = isMobile ? 8 : 12;
    double iconSize = isMobile ? 16 : 24;

    return EnvCard(
        minHeight: isMobile ? 32 : 48,
        minWidth: isMobile ? 100 : 200,
        borderRadius: 50,
        borderColor: BrandedColors.gray300,
        borderWidth: 2.0,
        onTap: onTap,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: spacer),
            Icon(icon, size: iconSize, color: BrandedColors.primary500),
            SizedBox(width: spacer),
            Text(text, style: textStyle),
            SizedBox(width: (spacer * 2) + iconSize),
          ],
        )
      );
  }
}
