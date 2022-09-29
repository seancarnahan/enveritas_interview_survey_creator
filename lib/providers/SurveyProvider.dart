import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/models/SurveyQuestionable.dart';

/*
 * Singleton and ChangeNotifier(Provider):
 * This Service is used for once a survey is selected, then we can run certain functions on it
 * Using Singleton to avoid routing params and so I can access provider w/out consuming it
 * Otherwise accessing the Provider would have to have your widget also consume and be updated by it
 * Both SurveyQuestionsEditPage and SurveyQuestionCreatorPage are below the declaration of this provider in widget tree
 */
class SurveyProvider extends ChangeNotifier {
  Survey? survey;
  static final SurveyProvider _surveyProvider = SurveyProvider._internal();

  SurveyProvider._internal();

  factory SurveyProvider() {
    return _surveyProvider;
  }

  void setSurvey(Survey survey) {
    this.survey = survey;
    notifyListeners();
  }

  Survey? getSurvey() {
    return survey;
  }

  void addQuestion(SurveyQuestionable question) {
    if (survey != null) {
      survey!.questions.add(question);
      notifyListeners();
    }
  }

  void removeQuestionByRank(int rank) {

  }

  void reorderQuestion(int currRank, int newRank) {

  } 
}
