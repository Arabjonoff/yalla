import 'package:flutter/material.dart';
import 'package:yalla/src/ui/auth/login_screen.dart';
import 'package:yalla/src/ui/auth/tabbar_screen.dart';
import 'package:yalla/src/ui/menu/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TapBarScreen(),
    );
  }
}
