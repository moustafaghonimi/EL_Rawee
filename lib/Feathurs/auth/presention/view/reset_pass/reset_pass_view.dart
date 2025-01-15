import 'package:elrawee/Core/utils/Text_them.dart';
import 'package:elrawee/Core/utils/app_assets.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:elrawee/Feathurs/auth/presention/view/reset_pass/reset_pass_form_filed.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/custm_image.dart';
import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
          ),
          SliverToBoxAdapter(
            child: TypeWriter.text(
              alignment: Alignment.center,
              AppStrings.forgotPasswordPage,
              style: AppTextTheme.textStyleYellowBold20.copyWith(fontSize: 35),
              duration: const Duration(milliseconds: 60),
            ),
          ),
          SliverToBoxAdapter(
            child: CustmImage(
              image: Assets.assetsImagesForgetPass,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(AppStrings.forgotPasswordCaption,
                  textAlign: TextAlign.center,
                  style: AppTextTheme.textStyleWhite18),
            ),
          ),
          SliverToBoxAdapter(
            child: ResetPassFormFiled(),
          )
        ],
      ),
    );
  }
}
