import 'package:flutter/material.dart';
import 'package:elrawee/Core/database/cache/cache_helper.dart';
import 'package:elrawee/Core/services/service_locator_get_it.dart';

import '../../../../Core/routes/custem_navigation_router.dart';
import '../../../../Core/widgets/custme_btn.dart';
import '../../data/models/on_bording_model.dart';
import 'package:elrawee/Core/utils/Text_them.dart';
import 'package:elrawee/Core/utils/app_strings.dart';

class GetBtnOnBording extends StatelessWidget {
  const GetBtnOnBording({
    super.key,
    required this.currentIndex,
    required this.controller,
  });
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBordingData.length - 1) {
      return Column(
        children: [
          CustmeBtn(
            btnName: AppStrings.createAccount,
            paddingSize: MediaQuery.of(context).size.width * 0.25,
            onPressed: () {
              getIt<CacheHelper>().saveData(key: 'isFirstTime', value: true);

              custemNavigationRouterReplacement(context, 'SignUpView');
            },
          ),
          TextButton(
            onPressed: () {
              getIt<CacheHelper>().saveData(key: 'isFirstTime', value: true);
              custemNavigationRouterReplacement(context, 'SignIn');
            },
            child: Text(
              AppStrings.loginNow,
              style: AppTextTheme.textStyleWhite14.copyWith(
                fontSize: 20,
              ),
            ),
          ),
        ],
      );
    } else {
      return CustmeBtn(
        btnName: AppStrings.next,
        paddingSize: MediaQuery.of(context).size.width * 0.25,
        onPressed: () {
          if (controller.page!.toInt() < onBordingData.length - 1) {
            controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInCubic,
            );
          }
        },
      );
    }
  }
}
