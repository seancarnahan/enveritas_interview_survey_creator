import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:interview_survey_creator/pages/surveyQuestionCreatorPage/SurveyQuestionCreatorPage.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsEditPage/SurveyQuestionsEditPage.dart';
import 'package:interview_survey_creator/pages/surveyQuestionsPage/SurveyQuestionsPage.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'pages/surveysPage/SurveysPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'interview_survey_creator',
      theme: ThemeData(
        primaryColor: BrandedColors.primary500,
        canvasColor: BrandedColors.white500,
        fontFamily: 'HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif',
      ),
      initialRoute: '/',
      routes: {
        SurveysPage.routeName: (context) => const SurveysPage(),
        SurveyQuestionsPage.routeName: (context) => const SurveyQuestionsPage(),
        SurveyQuestionCreatorPage.routeName: (context) => const SurveyQuestionCreatorPage(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SurveyQuestionsEditPage.routeName:
            // Change Page Transition Animation to be similar to Modal
            return PageTransition(
              child: const SurveyQuestionsEditPage(),
              type: PageTransitionType.bottomToTop,
              settings: settings
            );
          default:
            return null;
        }
      },
    );
  }
}
