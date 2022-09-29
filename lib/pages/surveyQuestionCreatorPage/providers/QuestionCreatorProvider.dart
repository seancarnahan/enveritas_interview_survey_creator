import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/SurveyQuestionBoolean.dart';
import 'package:interview_survey_creator/models/SurveyQuestionMultipleChoice.dart';
import 'package:interview_survey_creator/models/SurveyQuestionNumber.dart';
import 'package:interview_survey_creator/models/SurveyQuestionText.dart';
import 'package:interview_survey_creator/models/SurveyQuestionType.dart';
import 'package:interview_survey_creator/models/SurveyQuestionable.dart';
import 'package:interview_survey_creator/providers/SurveyProvider.dart';

class QuestionCreatorProvider extends ChangeNotifier {
  SurveyQuestionable question;

  QuestionCreatorProvider(): question = SurveyQuestionText('', 1, SurveyQuestionType.Text) {
    setNewSurveyQuestion(SurveyQuestionType.Text);
  }

  void setNewSurveyQuestion(SurveyQuestionType type) {
    int rank = _getRank();
    switch (type) {
      case SurveyQuestionType.Text:
        question = SurveyQuestionText(question.title, rank, SurveyQuestionType.Text);
        break;
      case SurveyQuestionType.Boolean:
        question = SurveyQuestionBoolean(question.title, rank, SurveyQuestionType.Boolean);
        break;
      case SurveyQuestionType.Number:
        question = SurveyQuestionNumber(question.title, rank, SurveyQuestionType.Number);
        break;
      case SurveyQuestionType.MultipleChoice:
        question = SurveyQuestionMultipleChoice(question.title, rank, SurveyQuestionType.MultipleChoice, this);
        break;
      default:
        question = SurveyQuestionText(question.title, rank, SurveyQuestionType.Text);
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

  int _getRank() {
    int? numQuestions = SurveyProvider().getSurvey()?.questions.length ?? 0;
    return numQuestions + 1;
  }
}
