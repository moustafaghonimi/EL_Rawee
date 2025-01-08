import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space({super.key, required this.h, required this.w});
  final double h;
  final double w;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
