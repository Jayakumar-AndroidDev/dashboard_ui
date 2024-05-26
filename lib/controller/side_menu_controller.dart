import 'package:flutter/material.dart';

class SideMenuController extends ChangeNotifier {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get getKey => key;
  void sideMenu(){
    if(key.currentState!.isDrawerOpen){
       key.currentState!.closeDrawer();
    }else{
      key.currentState!.openDrawer();
    }
  }
}