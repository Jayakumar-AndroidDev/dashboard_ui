import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent(
      {super.key,
      required this.text,
      required this.alignment,
      this.textColor = null});

  final String text;
  final AlignmentGeometry alignment;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
