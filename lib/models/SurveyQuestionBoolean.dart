import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/SurveyQuestionType.dart';
import 'package:interview_survey_creator/pages/surveyQuestionCreatorPage/widgets/PreviewQuestionContainer.dart';
import 'package:interview_survey_creator/widgets/controls/EnvRadioButtonController.dart';

import '../widgets/controls/models/EnvRadioButtonConfig.dart';
import 'SurveyQuestionable.dart';

class SurveyQuestionBoolean implements SurveyQuestionable {
  @override
  String title;

  @override
  int rank;

  @override
  final SurveyQuestionType type;

  SurveyQuestionBoolean(this.title, this.rank, this.type);

  @override
  Widget getForm() {
    return const SizedBox(height: 0, width: 0);
  }

  @override
  Widget getPreview() {
    return PreviewQuestionContainer(
      title: title,
      rank: rank,
      content: EnvRadioButtonController(
        configs: [
          EnvRadioButtonConfig(
            label: 'True',
            value: '1',
            groupValue: '1',
            onChanged: (dynamic str){}
          ),
          EnvRadioButtonConfig(
            label: 'False',
            value: '2',
            groupValue: '1',
            onChanged: (dynamic str){}
          )
        ]
      )
    );
  }
}
