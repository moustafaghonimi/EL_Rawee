import 'package:elrawee/Core/widgets/custme_btn.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_cubit.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_state.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/custem_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widgets/custem_circule_indicator.dart';

class SigninFormFiled extends StatelessWidget {
  const SigninFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signInFormKey,
          child: Column(
            children: [
              CustemTextFormFiled(
                  onchanged: (email) {
                    authCubit.emailAddress = email;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return AppStrings.validEmailEmpty;
                    } else if (!authCubit.emailRegex.hasMatch(value)) {
                      return AppStrings.validEmail;
                    }
                    return null;
                  },
                  hintText: 'Email',
                  icon: Icons.email),
              CustemTextFormFiled(
                  onchanged: (pass) {
                    authCubit.password = pass;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return AppStrings.validPasswordEmpty;
                    } else if (!authCubit.passwordRegex.hasMatch(value)) {
                      return AppStrings.validPassword;
                    }
                    return null;
                  },
                  hintText: 'Password',
                  icon: Icons.lock),
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  AppStrings.forgotPassword,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: state is SignUpLoadingState
                    ? CustomCircularProgressIndicator(
                        progress: 0.7,
                        textSize: 40,
                        w: 50,
                        h: 50,
                      )
                    : CustmeBtn(
                        btnName: AppStrings.signIn,
                        onPressed: () {
                          // if (authCubit.checkBoxtermsAndConditionsValue ==
                          //     true) {
                          //   if (authCubit.signInFormKey.currentState!
                          //       .validate()) {
                          //     if (state is SignUpScuccessState) {
                          //       authCubit.signInFormKey.currentState!.reset();
                          //     }
                          //   }
                          // } else {
                          //   custemToast(AppStrings.termsAndConditionMessage);
                          // }
                        }),
              ),
            ],
          ),
        );
      },
    );
  }
}
