import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:swipe/swipe.dart';
import 'package:yalla/src/colors/colors.dart';
import 'package:yalla/src/utils/utils.dart';
import 'package:yalla/src/widget/button/button_widget.dart';
import 'package:yalla/src/widget/menu/menu_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.black,
        elevation: 0,
        backgroundColor: AppColor.grey,
        title: const Text(
          'Savatingiz',
          style: TextStyle(color: AppColor.black),
        ),
      ),
      backgroundColor: AppColor.grey,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Slidable(

                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 16 * w, vertical: 8 * w),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 102,
                    child: Row(
                      children: [
                        Container(
                          width: 80 * w,
                          height: 80 * w,
                          child: Image.network(
                            'https://www.eatthis.com/wp-content/uploads/sites/4/2022/06/burger-king-whopper-jr.jpg?quality=82&strip=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          ButtonWidget(
            onTap: () {},
            text: 'Buyurtma Berish',
            margin: EdgeInsets.symmetric(horizontal: 16*w,vertical: 24*w),
          )
        ],
      ),
    );
  }
}
