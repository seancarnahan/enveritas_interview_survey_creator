// ignore_for_file: constant_identifier_names

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
  Survey? survey; // TODO remove optional
  bool isCreatingQuestion = false;

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

  void updateIsCreatingQuestion(bool isCreating) {
    isCreatingQuestion = isCreating;
    notifyListeners();
  }

  void addQuestion(SurveyQuestionable question) {
    if (survey != null) {
      survey!.questions.add(question);
    }
  }

  void removeQuestionByRank(int rank) {
    if (survey != null) {
      survey!.questions.removeWhere((question) => question.rank == rank);
    }
    _assignRanks();
    notifyListeners();
  }

  void reorderQuestions(int oldQuestionIndex, int newQuestionIndex) {
    if (survey != null) {
      List<SurveyQuestionable> questions = survey!.questions;
      final SurveyQuestionable question = questions.removeAt(oldQuestionIndex);
      questions.insert(newQuestionIndex, question);
      _assignRanks();
      notifyListeners();
    }
  }

  void _assignRanks() {
    for (int i = 0; i < survey!.questions.length; i++) {
      survey!.questions[i].rank = i + 1;
    }
  }
}
