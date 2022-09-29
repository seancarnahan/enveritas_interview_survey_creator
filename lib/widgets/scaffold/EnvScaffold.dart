import 'package:flutter/material.dart';
import 'package:interview_survey_creator/services/NavigationService.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';
import 'package:interview_survey_creator/constants/DesktopContstraints.dart';
import 'package:interview_survey_creator/widgets/button/EnvGestureDetector.dart';

import 'models/ScaffoldActionIcons.dart';

class EnvScaffold extends StatelessWidget {
  final Widget pageContent;
  final ScaffoldActionsIcons? topLeftActionIcon;
  final Widget? topRightAction;
  const EnvScaffold({
    Key? key,
    required this.pageContent,
    this.topLeftActionIcon,
    this.topRightAction
  }) : super(key: key);

  IconData getActionIcon() {
    switch (topLeftActionIcon) {
      case ScaffoldActionsIcons.BackArrow:
        return Icons.arrow_back;
      case ScaffoldActionsIcons.Exit:
        return Icons.clear;
      default:
        return Icons.arrow_back;
    }
  }

  @override
  Widget build(BuildContext context) {
    IconData leftActionIcon = getActionIcon();
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
                  visible: topLeftActionIcon != null,
                  child: EnvGestureDetector(
                    onTap: () => NavigationService.navigateBack(context),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        leftActionIcon,
                        size: 24,
                        color: BrandedColors.primary500
                      ),
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
              child: SizedBox(
                height: 32,
                width: 32,
                child: Row(
                  children: [
                    topRightAction ?? const Icon(Icons.question_mark)
                  ],
                ),
              )
            ),
            const SizedBox(width: 24, height: 32)
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
