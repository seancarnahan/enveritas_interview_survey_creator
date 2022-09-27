import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsEditPage/SurveyQuestionsEditPage.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsEditPage/models/SurveyQuestionsEditPageArgs.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsPage/SurveyQuestionsPage.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsPage/models/SurveyQuestionsPageArgs.dart';

class NavigationService {

  static void navigateTo(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  static void navigateToSurveyQuestionsPage(BuildContext context, Survey survey) {
    Navigator.pushNamed(
      context,
      SurveyQuestionsPage.routeName,
      arguments: SurveyQuestionsPageArgs(survey),
    );
  }

  static void navigateToSurveyQuestionsEditPage(BuildContext context, Survey survey) {
    Navigator.pushNamed(
      context,
      SurveyQuestionsEditPage.routeName,
      arguments: SurveyQuestionsEditPageArgs(survey),
    );
  }

  static void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
