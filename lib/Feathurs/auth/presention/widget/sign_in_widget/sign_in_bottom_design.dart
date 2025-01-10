import 'package:elrawee/Core/utils/app_assets.dart';
import 'package:elrawee/Core/utils/text_them.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/image_icon.dart';
import 'package:flutter/material.dart';

class SignInBottomDesign extends StatelessWidget {
  const SignInBottomDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('=========== Or Sign in with ===========',
            style: AppTextTheme.textStyleWhite18),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconImageCustem(imageName: Assets.googleIcon),
            SizedBox(width: 20),
            IconImageCustem(imageName: Assets.facebookIcon),
          ],
        ),
      ],
    );
  }
}
