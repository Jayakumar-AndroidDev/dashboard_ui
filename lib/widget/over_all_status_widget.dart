import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OverAllStatusWidget extends StatelessWidget {
  const OverAllStatusWidget({
    super.key,
    required this.containerColor,
    required this.title,
    required this.value,
    required this.icon
  });

  final Color containerColor;
  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(83, 158, 158, 158),
              containerColor,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              minRadius: 35,
              backgroundColor: containerColor,
              child: Center(
                child: Icon(
                  icon,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(title), const Gap(10), Text(value)],
            )
          ],
        ),
      ),
    );
  }
}
