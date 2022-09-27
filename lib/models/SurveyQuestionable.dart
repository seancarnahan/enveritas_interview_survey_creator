import 'package:flutter/material.dart';

import 'SurveyQuestionType.dart';

abstract class SurveyQuestionable {
  String title;
  final SurveyQuestionType type;

  SurveyQuestionable({
    required this.title,
    required this.type
  });

  // Fetch extra information from the user needed to create the question
  Widget getForm();

  // Creates a preview of what the question will look like
  Widget getPreview();

}
