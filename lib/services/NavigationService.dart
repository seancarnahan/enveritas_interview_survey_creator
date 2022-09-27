import 'package:flutter/material.dart';
import 'package:interview_survey_creator/pages/surveyQuestionCreatorPage/SurveyQuestionCreatorPage.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsEditPage/SurveyQuestionsEditPage.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsPage/SurveyQuestionsPage.dart';

class NavigationService {

  static void navigateTo(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  static void navigateToSurveyQuestionsPage(BuildContext context) {
    Navigator.pushNamed(
      context,
      SurveyQuestionsPage.routeName,
    );
  }

  static void navigateToSurveyQuestionsEditPage(BuildContext context) {
    Navigator.pushNamed(
      context,
      SurveyQuestionsEditPage.routeName,
    );
  }

  static void navigateToSurveyQuestionCreatorPage(BuildContext context) {
    Navigator.pushNamed(
      context,
      SurveyQuestionCreatorPage.routeName,
    );
  }

  static void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
