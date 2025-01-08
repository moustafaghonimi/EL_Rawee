// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:elrawee/Core/utils/text_them.dart';
import 'package:elrawee/Core/widgets/space.dart';

import '../../data/models/on_bording_model.dart';
import 'smooth_page_indicator_onbording.dart';

class OnBordingBody extends StatelessWidget {
  const OnBordingBody(
      {super.key, required this.controller, this.onPagedChange});

  final PageController controller;
  final void Function(int)? onPagedChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: PageView.builder(
        onPageChanged: onPagedChange,
        controller: controller,
        itemCount: onBordingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(onBordingData[index].image),
                        fit: BoxFit.fill)),
              ),
              Text(
                onBordingData[index].title,
                style: AppTextTheme.onBordingBodyTitelTextStyle25,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                onBordingData[index].subTitle,
                style: AppTextTheme.onBordingBodySubTitelTextStyle14,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Space(
                h: MediaQuery.of(context).size.height * 0.02,
                w: 0,
              ),
              SmoothPageIndicatorOnBording(controller: controller),
            ],
          );
        },
      ),
    );
  }
}
