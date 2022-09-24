import 'package:flutter/material.dart';

import 'SurveyQuestion.dart';

class Survey {
  final String name;
  final List<String> languages;
  final List<SurveyQuestion> questions;

  Survey({
    required this.name,
    required this.languages,
    required this.questions
  });
}
