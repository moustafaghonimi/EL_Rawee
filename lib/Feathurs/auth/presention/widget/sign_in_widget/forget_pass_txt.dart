import 'package:elrawee/Core/routes/custem_navigation_router.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        custemNavigationRouterReplacement(context, "path");
      },
      child: Text(
        AppStrings.forgotPassword,
      ),
    );
  }
}
