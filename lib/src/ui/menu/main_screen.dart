import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/src/colors/colors.dart';
import 'package:yalla/src/ui/menu/cart/cart_screen.dart';
import 'package:yalla/src/ui/menu/favorite/favorite_screen.dart';
import 'package:yalla/src/ui/menu/home/home_screen.dart';
import 'package:yalla/src/ui/menu/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> menu = [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menu[_selectedIndex],
      backgroundColor: AppColor.grey,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (_index) {
          _selectedIndex = _index;
          setState(() {});
        },
        currentIndex: _selectedIndex,
        backgroundColor: AppColor.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 0
                  ? 'assets/menu/home_selected.svg'
                  : 'assets/menu/home_unselected.svg',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 1
                  ? 'assets/menu/card_selected.svg'
                  : 'assets/menu/card_unselected.svg',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 2
                  ? 'assets/menu/card_selected.svg'
                  : 'assets/menu/card_unselected.svg',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 3
                  ? 'assets/menu/home_selected.svg'
                  : 'assets/menu/home_unselected.svg',
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
