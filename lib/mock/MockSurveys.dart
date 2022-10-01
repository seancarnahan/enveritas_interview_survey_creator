import 'package:interview_survey_creator/models/Survey.dart';
import 'package:interview_survey_creator/models/SurveyQuestionBoolean.dart';
import 'package:interview_survey_creator/models/SurveyQuestionType.dart';

List<Survey> mockSurveys = [
  Survey(
    name: 'Color Survey',
    languages: ['English', 'Spanish', 'Vietnamese'],
    questions: [
      SurveyQuestionBoolean(
        'What is your favorite color?',
        1,
        SurveyQuestionType.Text
      ),
      SurveyQuestionBoolean(
        'Is this statement true: You like the color red?',
        2,
        SurveyQuestionType.Boolean
      ),
      SurveyQuestionBoolean(
        'How many colors do you like?',
        3,
        SurveyQuestionType.Number
      ),
      SurveyQuestionBoolean(
        'What is your leave favorite color?',
        4,
        SurveyQuestionType.Text
      ),
      SurveyQuestionBoolean(
        'Is this statement true: You like the color green?',
        5,
        SurveyQuestionType.Boolean
      )
    ]
  ),
  Survey(
    name: 'Satisfaction Survey',
    languages: ['English', 'Mandarin', 'Hindi'],
    questions: []
  ),
  Survey(
    name: 'Income Survey',
    languages: ['English', 'Korean', 'French'],
    questions: []
  ),
  Survey(
    name: 'Location Survey',
    languages: ['English', 'Portuguese'],
    questions: []
  ),
  Survey(
    name: 'Internet Connection',
    languages: ['English'],
    questions: []
  ),
  Survey(
    name: 'Test Survey',
    languages: ['Mandarin'],
    questions: []
  ),
  Survey(
    name: 'Telephone Survey',
    languages: ['French', 'Korean'],
    questions: []
  ),
  Survey(
    name: 'Mail Survey',
    languages: ['Hindi', 'Vietnamese'],
    questions: []
  ),
  Survey(
    name: 'In-person Survey',
    languages: ['Spanish', 'Portuguese', 'Vietnamese'],
    questions: [] 
  ),
  Survey(
    name: 'Panel Sampling',
    languages: ['Mandarin', 'English'],
    questions: []
  ),
  Survey(
    name: 'Focus Group',
    languages: ['Portuguese', 'Vietnamese'],
    questions: []
  ),
  Survey(
    name: 'Mail-in Survey',
    languages: ['Spanish', 'Vietnamese'],
    questions: [] 
  ),
];