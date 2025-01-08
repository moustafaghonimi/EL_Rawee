import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/text_them.dart';
import 'package:elrawee/Core/utils/app_color.dart';

class CustmeBtn extends StatelessWidget {
  const CustmeBtn({
    super.key,
    required this.btnName,
    this.paddingSize = 8.0,
    this.width = 200,
    this.height = 50.0,
    this.onPressed,
  });
  final String btnName;
  final double paddingSize;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingSize),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width, height),
          backgroundColor: AppColor.primaryColor,
          foregroundColor: AppColor.hoverColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          btnName,
          style: AppTextTheme.textStyleblack18,
        ),
      ),
    );
  }
}
