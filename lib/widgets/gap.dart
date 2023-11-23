import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  double height;
  double width;
  Gap({
    Key? key,
    this.height = 0,
    this.width = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
