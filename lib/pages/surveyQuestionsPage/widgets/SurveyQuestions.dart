import 'package:flutter/material.dart';
import 'package:interview_survey_creator/models/Survey.dart';

class SurveyQuestions extends StatelessWidget {
  final Survey survey;
  const SurveyQuestions({Key? key, required this.survey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        ListView.builder(
          shrinkWrap: true, // Listview's height will based on Children's height rather than height of its parent
          itemCount: survey.questions.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: survey.questions[index].getPreview(),
            );
          }
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
