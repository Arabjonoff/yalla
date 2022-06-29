import 'package:flutter/material.dart';
import 'package:yalla/src/colors/colors.dart';
import 'package:yalla/src/ui/auth/login_screen.dart';
import 'package:yalla/src/ui/auth/register_screen.dart';

class TapBarScreen extends StatefulWidget {
  const TapBarScreen({Key? key}) : super(key: key);

  @override
  State<TapBarScreen> createState() => _TapBarScreenState();
}

class _TapBarScreenState extends State<TapBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.grey,
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              height: 381,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(48.0),
                        child: Image.asset('assets/images/yalla_logo.png'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TabBar(
                      indicatorColor: AppColor.orange,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: Text(
                            'Kirish',
                            style:
                                TextStyle(color: AppColor.black, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: Text(
                            "Ro'yhatdan o'tish",
                            maxLines: 1,
                            style:
                                TextStyle(color: AppColor.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
             Expanded(
              child: TabBarView(
                children: [
                  LoginScreen(),
                  RegisterScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
