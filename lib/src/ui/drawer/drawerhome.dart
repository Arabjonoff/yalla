import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yalla/src/colors/colors.dart';
import 'package:yalla/src/ui/drawer/drawe_screen.dart';
import 'package:yalla/src/ui/menu/main_screen.dart';

class DrawerHomeScreen extends StatefulWidget {
  const DrawerHomeScreen({Key? key}) : super(key: key);

  @override
  State<DrawerHomeScreen> createState() => _DrawerHomeScreenState();
}

class _DrawerHomeScreenState extends State<DrawerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.orange,
      body: ZoomDrawer(
        style: DrawerStyle.defaultStyle,
        mainScreen: MainScreen(),
        menuScreen: DrawerScreen(),
        showShadow: true,
        angle: -12.0,
        drawerShadowsBackgroundColor: AppColor.white,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
  }
}
