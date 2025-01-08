import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/Text_them.dart';
import 'package:elrawee/Core/utils/app_assets.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/external_continer.dart';
import 'custm_image.dart';

class SignUPBarUp extends StatelessWidget {
  const SignUPBarUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ExternalContiner(),
        Center(
          child: Text(
            AppStrings.signUp,
            style: AppTextTheme.textStyleblack14.copyWith(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColor.backgroundColor,
            ),
          ),
        ),
        CustmImage(image: Assets.signUpImage),
      ],
    );
  }
}
