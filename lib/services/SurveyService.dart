import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/models/SurveyQuestionable.dart';

/*
 * Singleton:
 * If registered updates are need from the same page,
 * then switch to Provider/Consumer Pattern.
 * This Service is used for once a survey is selected, then we can run certain functions on it
 */
class SurveyService {
  Survey? survey;
  static final SurveyService _surveyService = SurveyService._internal();

  SurveyService._internal();

  factory SurveyService() {
    return _surveyService;
  }

  void setSurvey(Survey survey) {
    this.survey = survey;
  }

  Survey? getSurvey() {
    return survey;
  }

  void addQuestion(SurveyQuestionable question) {

  }

  void removeQuestionByRank(int rank) {

  }

  void reorderQuestion(int currRank, int newRank) {

  } 
}
