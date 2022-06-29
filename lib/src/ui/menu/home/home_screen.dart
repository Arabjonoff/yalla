import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/src/colors/colors.dart';
import 'package:yalla/src/widget/menu/menu_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.grey,
        leading: const MenuWidget(),
        actions: [
          SvgPicture.asset('assets/menu/card_unselected.svg'),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 28),
            width: 220,
            child: const Text(
              'Delicious food for you',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white54
            ),
            width: MediaQuery.of(context).size.width,
            height: 60,
          )
        ],
      ),
    );
  }
}
