import 'package:flutter/material.dart';
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

  static void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
