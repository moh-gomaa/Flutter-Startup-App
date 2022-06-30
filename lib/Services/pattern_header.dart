import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final double? width;

  final double? height;

  final Widget? child;

  const CustomHeader(
      {Key? key, required this.width, required this.height, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "assets/pattern_bg.png",
        ),
        fit: BoxFit.cover,
      )),
      child: child != null ? child : Container(),
    );
  }
}
