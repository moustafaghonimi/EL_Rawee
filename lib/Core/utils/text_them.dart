import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';

abstract class AppTextTheme {
  static const TextStyle onBordingBodyTitelTextStyle25 = TextStyle(
    color: AppColor.appBarTextColor,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textStyleYellowSemiBold18 = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
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
  static const TextStyle textStyleYellowBold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColor.primaryColor,
  );
  static const TextStyle textStyleWhite18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColor.formColor,
  );
  static const TextStyle textStyleyellow24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColor.primaryColor,
  );
  static const TextStyle textStyleWhiteBold30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColor.appBarTextColor,
  );
}
