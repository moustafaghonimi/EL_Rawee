// ignore_for_file: file_names

import 'package:elrawee/Core/routes/custem_navigation_router.dart';
import 'package:elrawee/Core/widgets/custem_tost.dart';
import 'package:elrawee/Core/widgets/custme_btn.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_cubit.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_state.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/custem_text_form_filed.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/sign_in_widget/reset_pass_txt.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widgets/custem_circule_indicator.dart';

class SigninFormFiled extends StatelessWidget {
  const SigninFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SigninMessageState) {
          custemToast(state.errorMessage);
        }

        if (state is SigninScuccessState) {
          FirebaseAuth.instance.currentUser!.emailVerified
              ? custemNavigationRouterReplacement(context, 'HomeNavBar')
              : custemToast(AppStrings.verifieEmailMSG);
        }
      },
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
                    }
                    //  else if (!authCubit.passwordRegex.hasMatch(value)) {
                    //   return AppStrings.validPassword;
                    // }
                    return null;
                  },
                  hintText: 'Password',
                  icon: Icons.lock),
              Container(
                alignment: Alignment.topRight,
                child: ForgotPasswordText(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: state is SigninLoadingState
                    ? AnimatedCircularProgressIndicator(
                        progress: 0.8,
                        // textSize: 45,
                        w: 60,
                        h: 60,
                      )
                    : CustmeBtn(
                        btnName: AppStrings.signIn,
                        onPressed: () {
                          if (authCubit.signInFormKey.currentState!
                              .validate()) {
                            authCubit.signInWithEmailAndPassword();
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
