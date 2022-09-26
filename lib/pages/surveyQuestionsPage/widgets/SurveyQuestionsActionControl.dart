import 'package:flutter/material.dart';
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
    return EnvCard(
        minHeight: 32,
        maxHeight: 48,
        minWidth: 100,
        maxWidth: 100,
        borderRadius: 50,
        content: Text('data')
      );
  }
}
