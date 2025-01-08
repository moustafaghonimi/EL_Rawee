import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorOnBording extends StatelessWidget {
  const SmoothPageIndicatorOnBording({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller, // PageController
        count: 3,
        effect: WormEffect(
            type: WormType.thin,
            spacing: 20.0,
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: AppColor.primaryColor,
            dotColor: AppColor.hoverColor,
            paintStyle: PaintingStyle.fill), // your preferred effect
        onDotClicked: (index) {});
  }
}
