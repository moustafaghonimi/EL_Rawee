import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';

abstract class AppTextTheme {
  static const TextStyle onBordingBodyTitelTextStyle25 = TextStyle(
    color: AppColor.appBarTextColor,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle onBordingBodySubTitelTextStyle14 = TextStyle(
    color: Color.fromARGB(183, 255, 255, 255),
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle textStyleWhite14 = TextStyle(
    color: AppColor.appBarTextColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle textStyleblack14 = TextStyle(
    color: AppColor.backgroundColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle textStyleblack18 = TextStyle(
    color: AppColor.backgroundColor,
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
}
