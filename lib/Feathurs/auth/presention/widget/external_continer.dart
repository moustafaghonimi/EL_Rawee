import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';

class ExternalContiner extends StatelessWidget {
  const ExternalContiner({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: AppColor.formColor,
            offset: const Offset(0, 0),
            blurRadius: 4,
          ),
        ],
        color: AppColor.formColor,
      ),
      width: double.infinity,
      height: height,
    );
  }
}
