import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/SurveyQuestionBoolean.dart';
import 'package:interview_survey_creator/models/SurveyQuestionMultipleChoice.dart';
import 'package:interview_survey_creator/models/SurveyQuestionNumber.dart';
import 'package:interview_survey_creator/models/SurveyQuestionText.dart';
import 'package:interview_survey_creator/models/SurveyQuestionType.dart';
import 'package:interview_survey_creator/models/SurveyQuestionable.dart';

class QuestionCreatorProvider extends ChangeNotifier {
  SurveyQuestionable question;

  QuestionCreatorProvider(): question = SurveyQuestionText('', SurveyQuestionType.Text);

  void setNewSurveyQuestion(SurveyQuestionType type) {
    switch (type) {
      case SurveyQuestionType.Text:
        question = SurveyQuestionText(question.title, SurveyQuestionType.Text);
        break;
      case SurveyQuestionType.Boolean:
        question = SurveyQuestionBoolean(question.title, SurveyQuestionType.Boolean);
        break;
      case SurveyQuestionType.Number:
        question = SurveyQuestionNumber(question.title, SurveyQuestionType.Number);
        break;
      case SurveyQuestionType.MultipleChoice:
        question = SurveyQuestionMultipleChoice(question.title, SurveyQuestionType.MultipleChoice, this);
        break;
      default:
        question = SurveyQuestionText(question.title, SurveyQuestionType.Text);
    }
    notifyListeners();
  }

  void updateQuestionTitle(String text) {
    question.title = text;
    notifyListeners();
  }

  void updateQuestion() {
    notifyListeners();
  }
}
