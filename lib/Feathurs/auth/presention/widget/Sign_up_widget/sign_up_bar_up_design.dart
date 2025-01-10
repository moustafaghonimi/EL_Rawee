import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/Text_them.dart';
import 'package:elrawee/Core/utils/app_assets.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:typewritertext/typewritertext.dart';
import '../custm_image.dart';

class SignUPBarUp extends StatelessWidget {
  const SignUPBarUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TypeWriter.text(
            alignment: Alignment.center,
            AppStrings.signUp,
            style: AppTextTheme.textStyleYellowBold20.copyWith(fontSize: 30),
            duration: const Duration(milliseconds: 120),
          ),
        ),
        CustmImage(image: Assets.signUpImage),
      ],
    );
  }
}
