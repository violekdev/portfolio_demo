import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  final Color? bgColor;
  const AboutMeWidget({
    Key? key,
    this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      height: 800, //961
    );
  }
}