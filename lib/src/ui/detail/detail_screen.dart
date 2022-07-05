import 'package:flutter/material.dart';
import 'package:yalla/src/colors/colors.dart';
import 'package:yalla/src/utils/utils.dart';

class DetailScreen extends StatefulWidget {
  final indexs;

  const DetailScreen({Key? key, this.indexs}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getHeight(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppColor.grey,
      appBar: AppBar(
        foregroundColor:AppColor.black,
        centerTitle: true,
        title: Text(
          'Ichimliklar',
          style: TextStyle(color: AppColor.black),
        ),
        elevation: 0,
        backgroundColor: AppColor.grey,
      ),
      body: ListView(
        children: [
          Container(
            height: 250 * w,
            width: MediaQuery.of(context).size.width,
            color: Colors.orange,
            child: Hero(
              tag: widget.indexs,
              child: Image.network(
                  'https://www.eatthis.com/wp-content/uploads/sites/4/2022/06/burger-king-whopper-jr.jpg?quality=82&strip=1',fit: BoxFit.cover,),
            ),
          ),
        ],
      ),
    );
  }
}
