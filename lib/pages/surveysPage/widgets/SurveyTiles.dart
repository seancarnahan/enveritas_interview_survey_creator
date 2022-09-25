import 'package:flutter/material.dart';
import 'package:interview_survey_creator/mock/MockSurveys.dart';
import 'package:interview_survey_creator/pages/surveysPage/widgets/SurveyTile.dart';

class SurveyTiles extends StatelessWidget {
  const SurveyTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: mockSurveys.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: SurveyTile(survey: mockSurveys[index]),
        );
      })
    );
  }
}
