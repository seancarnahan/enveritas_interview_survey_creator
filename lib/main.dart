import 'package:flutter/material.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';

import 'pages/surveyPage/SurveyPage.dart';

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
      home: const SurveyPage(),
    );
  }
}
