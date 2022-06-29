import 'package:flutter/material.dart';
import 'package:yalla/src/widget/button/button_widget.dart';

import '../../colors/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

}
TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();


class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
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
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                ),
              ],
            ),
          ),
          ButtonWidget(onTap: (){}, text: "Ro'yhatdan o'tish", margin: const EdgeInsets.symmetric(horizontal: 32,vertical: 41))
        ],
      ),
    );
  }
}
