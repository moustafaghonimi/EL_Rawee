import 'package:elrawee/Core/routes/custem_navigation_router.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/sign_in_widget/sign_in_form_filed%20.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/terms_and_privacy.dart';
import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';

class SignInFormDesign extends StatelessWidget {
  const SignInFormDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding:
            const EdgeInsets.only(top: 25, bottom: 15, left: 10, right: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.formColor,
              offset: const Offset(0, 0),
              blurRadius: 6,
            ),
          ],
          color: AppColor.formColor,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          children: [
            SigninFormFiled(),
            Container(
              margin: const EdgeInsets.only(left: 40),
              alignment: Alignment.centerRight,
              child: TextAndButton(
                  text1: AppStrings.dontHaveAnAccount,
                  text2: AppStrings.createAccount,
                  color1: AppColor.appBarColor,
                  color2: AppColor.textColor,
                  onPressed: () =>
                      custemNavigationRouter(context, 'SignUpView')),
            ),
          ],
        ));
  }
}
