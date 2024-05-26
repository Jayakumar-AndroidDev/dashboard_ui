import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero
      ),
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal
            ),
            child: Center(
              child: Text("header"),
            ),
          ),
          drawerItem(title: 'Dashboard', icon: Icons.home, onTab: (){}),
          drawerItem(title: 'Calendar', icon: Icons.calendar_month, onTab: (){}),
          drawerItem(title: 'Email', icon: Icons.mail, onTab: (){}),
          drawerItem(title: 'Message', icon: Icons.message, onTab: (){}),
          const Divider(),
          drawerItem(title: 'Help', icon: Icons.help_outline_outlined, onTab: (){}),
          drawerItem(title: 'Settings', icon: Icons.settings, onTab: (){}),
        ],
      ),
    );
  }

  Widget drawerItem({required String title,required IconData icon,required Function() onTab}){
    return ListTile(
      title: Text(title),
      leading: Icon(icon,color: Colors.white,),
      onTap: onTab,
      horizontalTitleGap: 15,
    );
  }
}
