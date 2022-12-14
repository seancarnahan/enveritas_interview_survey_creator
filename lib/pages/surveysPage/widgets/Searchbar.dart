import 'package:flutter/material.dart';
import 'package:interview_survey_creator/services/KeyboardService.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/widgets/controls/EnvTextField.dart';
import 'package:interview_survey_creator/widgets/controls/models/EnvTextFieldConfig.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement search functionality
    return EnvTextField(
      config: EnvTextFieldConfig(
        prefix: const Icon(Icons.search, size: 32, color: BrandedColors.primary500),
        hintText: 'Find survey...',
        keyboardType: KeyboardType.chars
      ),
    );
  }
}
