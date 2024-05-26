import 'package:blog_vis_ui/widget/responsive.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (!Responsive.isMobile(context) && !Responsive.isTablet(context))
          SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 228, 228, 228),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30)),
                  label: const Text('Search'),
                  suffixIcon: const Icon(Icons.search)),
            ),
          ),
        
        // if (Responsive.isMobile(context)||Responsive.isTablet(context))
        //   GestureDetector(onTap: key.sideMenu,child: const Icon(Icons.menu)),

        if (Responsive.isMobile(context)||Responsive.isTablet(context))
          Text(
            'Dashbord',
            style: Theme.of(context).textTheme.titleMedium,
          ),

        Row(
          children: [
            iconContainer(Icons.notifications),
            const Gap(10),
            iconContainer(Icons.message),
            const Gap(10),
            iconContainer(Icons.mail),
            const Gap(10),
            iconContainer(Icons.notifications, isProfile: true),
          ],
        )
      ],
    );
  }

  Widget iconContainer(IconData icon, {isProfile = false}) {
    return Container(
      width: 40,
      height: 40,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Color.fromARGB(54, 228, 228, 228)),
      child: isProfile
          ? Image.asset('asset/image/profile_pic.jpg')
          : Center(
              child: Icon(
              icon,
              color: const Color.fromARGB(255, 228, 228, 228),
            )),
    );
  }
}
