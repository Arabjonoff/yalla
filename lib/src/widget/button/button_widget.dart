import 'package:flutter/material.dart';
import 'package:yalla/src/colors/colors.dart';

class ButtonWidget extends StatefulWidget {
  final Function onTap;
  final String text;
  final EdgeInsets margin;

  const ButtonWidget({Key? key, required this.onTap, required this.text, required this.margin})
      : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){widget.onTap();},
      child: Container(
        margin: widget.margin,
        width: MediaQuery.of(context).size.width,
        height: 57,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.orange,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(color: AppColor.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
