import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/SurveyQuestionType.dart';
import 'package:interview_survey_creator/widgets/controls/EnvDropdown.dart';
import 'package:interview_survey_creator/widgets/controls/models/EnvDropdownConfig.dart';
import 'package:provider/provider.dart';

import '../providers/QuestionCreatorProvider.dart';

class SurveyQuestionTypeDropdown extends StatelessWidget {
  const SurveyQuestionTypeDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionCreatorProvider>(
      builder: (context, _questionCreatorProvider, child) {
        return Row(
          children: [
            Expanded(
              flex: 2,
              child: EnvDropdown(
                config: EnvDropdownConfig(
                  items: {
                    'Text': SurveyQuestionType.Text,
                    'Boolean': SurveyQuestionType.Boolean, // Maybe change name to true or false
                    'Number': SurveyQuestionType.Number,
                    'Multiple Choice': SurveyQuestionType.MultipleChoice,
                  },
                  onChanged: (val) => _questionCreatorProvider.setNewSurveyQuestion(val)
                )
              )
            ),
            const Expanded(
              flex: 1,
              child: SizedBox()
            )
          ],
        );
      }
    );
  }
}
