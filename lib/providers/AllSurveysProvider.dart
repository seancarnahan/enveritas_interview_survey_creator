import 'package:flutter/material.dart';
import 'package:interview_survey_creator/mock/MockSurveys.dart';
import 'package:interview_survey_creator/models/Survey.dart';

import 'SurveyProvider.dart';

/*
 * Singleton and ChangeNotifier(Provider):
 */
class AllSurveysProvider extends ChangeNotifier {
  List<Survey> surveys = mockSurveys;

  static final AllSurveysProvider _allSurveyProvider = AllSurveysProvider._internal();

  AllSurveysProvider._internal();

  factory AllSurveysProvider() {
    return _allSurveyProvider;
  }

  void createNewSurvey() {
    Survey survey = Survey(name: 'My New Survey', languages: ['English'], questions: []);
    surveys.insert(0, survey);
    SurveyProvider().setSurvey(survey);
    notifyListeners();
  }

  void surveyUpdated() {
    notifyListeners();
  }
}
