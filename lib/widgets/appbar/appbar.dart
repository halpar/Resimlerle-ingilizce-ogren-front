import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget leading, trailing;
  final String title;
  final double height, doubleChildHeight;
  final bool isBig;

  const CustomAppBar(
      {Key key,
      this.leading,
      this.trailing,
      this.title,
      this.height,
      this.doubleChildHeight,
      this.isBig})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
