import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () => ZoomDrawer.of(context)!.toggle(),
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      );
}
