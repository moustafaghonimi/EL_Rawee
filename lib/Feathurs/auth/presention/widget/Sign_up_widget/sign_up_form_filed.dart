import 'package:elrawee/Core/routes/custem_navigation_router.dart';
import 'package:elrawee/Core/widgets/custem_tost.dart';
import 'package:elrawee/Core/widgets/custme_btn.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_cubit.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_state.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/custem_check_box.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/custem_text_form_filed.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/terms_and_privacy.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widgets/custem_circule_indicator.dart';

class SignUpFormFiled extends StatelessWidget {
  const SignUpFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpMessageState) {
          custemToast(state.errorMessage);
        }

        if (state is SignUpScuccessState) {
          custemToast(AppStrings.signUpSuccess);
          custemNavigationRouterReplacement(context, 'SignIn');
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signUpFormKey,
          child: Column(
            children: [
              CustemTextFormFiled(
                  onchanged: (firstName) {
                    authCubit.firstName = firstName;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return AppStrings.validFirstName;
                    }
                    return null;
                  },
                  hintText: 'Firest Name',
                  icon: Icons.person),
              CustemTextFormFiled(
                  onchanged: (lastName) {
                    authCubit.lastName = lastName;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return AppStrings.validLastName;
                    }
                    return null;
                  },
                  hintText: 'Last Name',
                  icon: Icons.person_pin),
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
              Row(
                children: [
                  CustemCheckBox(),
                  TextAndButton(
                    text1: AppStrings.iHaveAgreeToOur,
                    text2: AppStrings.termsAndCondition,
                    color1: AppColor.texetErrorColor,
                    color2: AppColor.appBarColor,
                    onPressed: () {
                      custemNavigationRouter(context, 'TermsScreen');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: state is SignUpLoadingState
                    ? AnimatedCircularProgressIndicator(
                        progress: 0.7,
                        // textSize: 40,
                        w: 50,
                        h: 50,
                      )
                    : CustmeBtn(
                        btnName: AppStrings.signUp,
                        onPressed: () {
                          if (authCubit.checkBoxtermsAndConditionsValue ==
                              true) {
                            if (authCubit.signUpFormKey.currentState!
                                .validate()) {
                              authCubit.signUpAutheWithEmailAndPassword();
                              if (state is SignUpScuccessState) {
                                authCubit.signUpFormKey.currentState!.reset();
                              }
                            }
                          } else {
                            custemToast(AppStrings.termsAndConditionMessage);
                          }
                        }),
              ),
            ],
          ),
        );
      },
    );
  }
}
