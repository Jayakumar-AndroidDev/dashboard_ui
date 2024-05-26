import 'package:blog_vis_ui/widget/text_component.dart';
import 'package:blog_vis_ui/widget/users_list_item.dart';
import 'package:flutter/material.dart';

class UsersWidget extends StatelessWidget {
  const UsersWidget({super.key, required this.flex});

  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(69, 158, 158, 158),
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: const SingleChildScrollView(
                child:  Column(
                  children: [
                    TextComponent(text: 'Users', alignment: Alignment.centerLeft),
                    UsersListItem(
                      containerColor: Color.fromARGB(57, 0, 150, 135),
                      textColor: Color.fromARGB(255, 0, 255, 229),
                      title: 'New user',
                      value: '250',
                    ),
                    UsersListItem(
                      containerColor: Color.fromARGB(38, 244, 67, 54),
                      textColor: Color.fromARGB(255, 255, 17, 0),
                      title: 'Old user',
                      value: '326',
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
