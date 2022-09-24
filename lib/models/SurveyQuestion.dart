import 'package:flutter/material.dart';

import 'SurveyQuestionType.dart';

// TODO: Might have to make abstract -> depending on if still displayable
class SurveyQuestion {
  final String question;
  final int rank; // Determines order within the survey
  final SurveyQuestionType type;

  SurveyQuestion({
    required this.question,
    required this.rank,
    required this.type
  });
}
