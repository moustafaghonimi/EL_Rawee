import 'package:elrawee/Feathurs/auth/presention/widget/sign_up_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';

class SignUpFormDesign extends StatelessWidget {
  const SignUpFormDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.formColor,
              offset: const Offset(0, 0),
              blurRadius: 6,
            ),
          ],
          color: AppColor.formColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SignUpFormFiled());
  }
}
