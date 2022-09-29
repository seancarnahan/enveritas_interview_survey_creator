import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/SurveyQuestionType.dart';
import 'package:interview_survey_creator/pages/surveyQuestionCreatorPage/widgets/PreviewQuestionContainer.dart';
import 'package:interview_survey_creator/services/KeyboardService.dart';
import 'package:interview_survey_creator/widgets/controls/EnvTextField.dart';
import 'package:interview_survey_creator/widgets/controls/models/EnvTextFieldConfig.dart';

import 'SurveyQuestionable.dart';

class SurveyQuestionText implements SurveyQuestionable {
  @override
  String title;

  @override
  int rank;

  @override
  final SurveyQuestionType type;

  SurveyQuestionText(this.title, this.rank, this.type);

  @override
  Widget getForm() {
    return const SizedBox(height: 0, width: 0);
  }

  @override
  Widget getPreview() {
    return PreviewQuestionContainer(
      title: title,
      rank: rank,
      content: EnvTextField(
        config: EnvTextFieldConfig(
          maxLength: 500,
          hintText: 'Answer here...',
          keyboardType: KeyboardType.charsAndNumbersAndSpaces
        ),
        onChanged: (value) => {},
      ),
    );
  }
}
