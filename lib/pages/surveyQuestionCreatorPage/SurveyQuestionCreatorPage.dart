import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:interview_survey_creator/services/KeyboardService.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/styles/BrandedTextStyle.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/widgets/controls/EnvTextField.dart';
import 'package:interview_survey_creator/widgets/controls/models/EnvTextFieldConfig.dart';
import 'package:interview_survey_creator/services/NavigationService.dart';
import 'package:interview_survey_creator/services/SurveyService.dart';
import 'package:interview_survey_creator/widgets/scaffold/EnvScaffold.dart';
import 'providers/QuestionCreatorProvider.dart';
import 'widgets/SurveyQuestionTypeDropdown.dart';

class SurveyQuestionCreatorPage extends StatelessWidget {
  const SurveyQuestionCreatorPage({Key? key}) : super(key: key);

  static const routeName = '/surveyQuestionCreator';

  @override
  Widget build(BuildContext context) {
    // Redirect back if survey is not set in Singleton
    if (SurveyService().getSurvey() == null) {
      NavigationService.navigateBack(context);
    }
    Survey survey = SurveyService().getSurvey()!;

    return ChangeNotifierProvider<QuestionCreatorProvider>(
      create: (context) => QuestionCreatorProvider(),
      child: EnvScaffold(
        topRightAction: GestureDetector(
          onTap: () => NavigationService.navigateBack(context),
          child: const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.clear,
              size: 32,
              color: BrandedColors.primary500
            ),
          ),
        ),
        pageContent: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SurveyQuestionTypeDropdown(),
            const SizedBox(height: 24),
            Consumer<QuestionCreatorProvider>(
              builder: (context, questionCreationProvider, child) {
                return EnvTextField(
                  config: EnvTextFieldConfig(
                    maxLength: 500,
                    hintText: 'Input Question here...',
                    keyboardType: KeyboardType.noRestrictions
                  ),
                  onChanged: (value) => questionCreationProvider.updateQuestionTitle(value),
                );
              }
            ),
            Consumer<QuestionCreatorProvider>(
              builder: (context, questionCreationProvider, child) {
                return questionCreationProvider.question.getForm();
              }
            ),
            const SizedBox(height: 32),
            Text('Preview', style: BrandedTextStyle.b1Reg(BrandedColors.primary500)),
            const SizedBox(height: 24),
            Consumer<QuestionCreatorProvider>(
              builder: (context, questionCreationProvider, child) {
                return questionCreationProvider.question.getPreview();
              }
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
