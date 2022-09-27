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
      },
      onGenerateRoute: (settings) {
        // Changes Page Transition Animation to be similar to Modal
        // TODO: Change Page Transitions to be less mobile like for Desktop
        switch (settings.name) {
          case SurveyQuestionsEditPage.routeName:
            return PageTransition(
              child: const SurveyQuestionsEditPage(),
              type: PageTransitionType.bottomToTop,
              settings: settings
            );
          case SurveyQuestionCreatorPage.routeName:
            return PageTransition(
              child: const SurveyQuestionCreatorPage(),
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
