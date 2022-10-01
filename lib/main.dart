import 'package:flutter/material.dart';

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
    );
  }
}
