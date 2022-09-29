import 'package:flutter/material.dart';

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
      child: GestureDetector(
        onTap:() => onTap(),
        child: child,
      )
    );
  }
}
