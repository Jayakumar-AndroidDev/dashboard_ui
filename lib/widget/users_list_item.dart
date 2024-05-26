import 'package:blog_vis_ui/widget/text_component.dart';
import 'package:flutter/material.dart';

class UsersListItem extends StatelessWidget {
  const UsersListItem({
    super.key,
    required this.containerColor,
    required this.textColor,
    required this.title,
    required this.value
  });

  final Color containerColor;
  final Color textColor;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Column(
        children: [
          TextComponent(text: title, alignment: Alignment.center),
          TextComponent(
            text: value,
            alignment: Alignment.center,
            textColor: textColor,
          ),
        ],
      ),
    );
  }
}
