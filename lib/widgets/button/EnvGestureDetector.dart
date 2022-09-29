import 'package:flutter/material.dart';
import 'package:interview_survey_creator/styles/BrandedColors.dart';

class EnvGestureDetector extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  const EnvGestureDetector({
    Key? key,
    required this.onTap,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        splashColor: BrandedColors.secondary500,
        onTap:() => onTap(),
        child: child,
      )
    );
  }
}
