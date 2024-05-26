import 'package:blog_vis_ui/widget/responsive.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context) || Responsive.isTablet(context)) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: bodyContent(context: context),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!Responsive.isMobile(context) && !Responsive.isTablet(context))
            Text(
              'Dashboard',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          bodyContent(context: context)
        ],
      ),
    );
  }

  Widget miniChartIcon({
    required BuildContext context,
    required String title,
    required Color color,
  }) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Icon(
          Icons.show_chart_outlined,
          color: color,
        )
      ],
    );
  }

  Widget bodyContent({required BuildContext context}) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        miniChartIcon(
            context: context, title: 'Visitors', color: Colors.green[600]!),
        const Gap(10),
        miniChartIcon(context: context, title: 'Charts', color: Colors.red),
        const Gap(10),
      
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.add_circle_sharp,
            color: Colors.white,
          ),
          label: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              Responsive.isTablet(context) || Responsive.isWeb(context) ? "Create New" : "Create",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 13,
                  ),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
          ),
        ),
      ],
    );
  }
}
