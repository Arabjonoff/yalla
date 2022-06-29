import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yalla/src/colors/colors.dart';


class MenuItem {
  String title;
  IconData icon;
  MenuItem(this.icon, this.title);
}
final List<MenuItem> options = [
  MenuItem(CupertinoIcons.person_alt_circle, 'Profile'),
  MenuItem(Icons.add_shopping_cart_rounded, 'orders'),
  MenuItem(Icons.local_offer_outlined, 'offer and promo'),
  MenuItem(CupertinoIcons.doc_text, 'Orders'),
  MenuItem(Icons.security, 'Security'),
];
class DrawerScreen extends StatelessWidget {
   const DrawerScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(color: AppColor.orange),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: options.map((e) {
                return ListTile(
                  onTap: () {},
                  leading: Icon(
                    e.icon,
                    color: Colors.white,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.title,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        color: Colors.white54,
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
            ListTile(

              title: Row(
                children: const [
                  Text(
                    "Sign-out",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
