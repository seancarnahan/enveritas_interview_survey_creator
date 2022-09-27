import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';

class SurveyQuestions extends StatelessWidget {
  final Survey survey;
  const SurveyQuestions({Key? key, required this.survey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Has Questions');
  }
}
