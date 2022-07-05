import 'package:flutter/material.dart';
import 'package:yalla/src/colors/colors.dart';
import 'package:yalla/src/ui/drawer/drawerhome.dart';
import 'package:yalla/src/utils/utils.dart';
import 'package:yalla/src/widget/button/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: AppColor.grey,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: _emailController,
                    decoration:
                        const InputDecoration(labelText: 'Email address'),
                  ),
                ),
                const SizedBox(
                  height: 46,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      focusColor: AppColor.orange,
                        labelText: 'Password',),
                  ),
                ),
              ],
            ),
          ),
          ButtonWidget(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const DrawerHomeScreen();
                    },
                  ),
                );
              },
              text: 'Kirish',
              margin:  EdgeInsets.symmetric(horizontal: 32*w, vertical: 32*w))
        ],
      ),
    );
  }
}
