import 'package:elrawee/Core/utils/app_assets.dart';
import 'package:elrawee/Core/utils/text_them.dart';
import 'package:elrawee/Core/widgets/space.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/custm_image.dart';
import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class SignInTopBar extends StatelessWidget {
  const SignInTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        children: [
          Space(
            h: MediaQuery.of(context).size.height * 0.05,
            w: 0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TypeWriter.text(
              alignment: Alignment.center,
              'Welcome Back to RAWEE',
              style: AppTextTheme.textStyleYellowBold20.copyWith(fontSize: 30),
              duration: const Duration(milliseconds: 100),
            ),
          ),
          CustmImage(image: Assets.loginImage),
        ],
      ),
    );
  }
}
