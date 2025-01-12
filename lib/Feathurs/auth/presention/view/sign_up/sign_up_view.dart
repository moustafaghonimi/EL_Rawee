import 'package:flutter/material.dart';
import 'package:elrawee/Core/routes/custem_navigation_router.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:elrawee/Core/widgets/space.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/Sign_up_widget/sign_up_bar_up_design.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/Sign_up_widget/sign_up_form_design.dart';

import '../../widget/terms_and_privacy.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SignUPBarUp()),
            SliverToBoxAdapter(child: SignUpFormDesign()),
            SliverToBoxAdapter(
                child:
                    Space(h: MediaQuery.of(context).size.height * 0.02, w: 0)),
            SliverToBoxAdapter(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: TextAndButton(
                    text1: AppStrings.alreadyHaveAnAccount,
                    text2: AppStrings.signIn,
                    color1: AppColor.formColor,
                    color2: AppColor.appBarTextColor,
                    onPressed: () =>
                        custemNavigationRouterReplacement(context, 'SignIn')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
