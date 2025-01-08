import 'package:elrawee/Core/widgets/custme_btn.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_cubit.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_state.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/custem_check_box.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/custem_text_form_filed.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/terms_and_privacy.dart';
import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpFormFiled extends StatelessWidget {
  const SignUpFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              CustemTextFormFiled(
                  onchanged: (firstName) {
                    BlocProvider.of<AuthCubit>(context).firstName = firstName;
                  },
                  hintText: 'Firest Name',
                  icon: Icons.person),
              CustemTextFormFiled(
                  onchanged: (lastName) {
                    BlocProvider.of<AuthCubit>(context).lastName = lastName;
                  },
                  hintText: 'Last Name',
                  icon: Icons.person_pin),
              CustemTextFormFiled(
                  onchanged: (email) {
                    BlocProvider.of<AuthCubit>(context).emailAddress = email;
                  },
                  hintText: 'Email',
                  icon: Icons.email),
              CustemTextFormFiled(
                  onchanged: (pass) {
                    BlocProvider.of<AuthCubit>(context).password = pass;
                  },
                  hintText: 'Password',
                  icon: Icons.lock),
              Row(
                children: [
                  CustemCheckBox(),
                  const TextAndButton(
                    text1: AppStrings.iHaveAgreeToOur,
                    text2: AppStrings.termsAndCondition,
                    color1: AppColor.texetErrorColor,
                    color2: AppColor.appBarColor,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: CustmeBtn(
                    btnName: AppStrings.signUp,
                    onPressed: () {
                      BlocProvider.of<AuthCubit>(context)
                          .signUpAutheWithEmailAndPassword();
                    }),
              ),
            ],
          ),
        );
      },
    );
  }
}
