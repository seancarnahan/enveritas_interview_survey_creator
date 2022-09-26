import 'package:flutter/material.dart';
import 'package:interview_survey_creator/services/NavigationService.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/constants/DesktopContstraints.dart';

class EnvScaffold extends StatelessWidget {
  final Widget pageContent;
  final bool hasBackArrow;
  final Widget? topRightAction;
  const EnvScaffold({
    Key? key,
    required this.pageContent,
    this.hasBackArrow=false,
    this.topRightAction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          leadingWidth: 0,
          backgroundColor: BrandedColors.white500,
          title: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Visibility(
                  visible: hasBackArrow,
                  child: GestureDetector(
                    onTap: () => NavigationService.navigateBack(context),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(Icons.arrow_back, size: 24, color: BrandedColors.primary500),
                    ),
                  )
                ),
                const Image(image: AssetImage('assets/Enveritas.png'))
              ],
            )
          ),
          actions: [
            Visibility(
              visible: topRightAction != null,
              child: topRightAction ?? const Icon(Icons.question_mark)
            ),
            const SizedBox(width: 24)
          ]
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: DeskTopMaxWidth,
                    maxHeight: double.infinity
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      pageContent
                    ],
                  )
                )
              ],
            ),
          )
        ),
      )
    );
  }
}
