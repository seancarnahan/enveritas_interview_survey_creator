import 'package:flutter/material.dart';

import 'SurveyQuestionable.dart';

class Survey {
  final String name;
  final List<String> languages;
  final List<SurveyQuestionable> questions;

  Survey({
    required this.name,
    required this.languages,
    required this.questions
  });
}
