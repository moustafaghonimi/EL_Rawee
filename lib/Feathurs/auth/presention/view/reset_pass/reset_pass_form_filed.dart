// ignore_for_file: file_names

import 'package:elrawee/Core/routes/custem_navigation_router.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/widgets/custem_tost.dart';
import 'package:elrawee/Core/widgets/custme_btn.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_cubit.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_state.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/custem_text_form_filed.dart';

import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widgets/custem_circule_indicator.dart';

class ResetPassFormFiled extends StatelessWidget {
  const ResetPassFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPassMessageState) {
          custemToast(state.errorMessage);
        }

        if (state is ResetPassScuccessState) {
          custemToast(AppStrings.resetPassMSG);
          custemNavigationRouterReplacement(context, 'SignIn');
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.resetPassKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: AppColor.formColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                clipBehavior: Clip.antiAlias,
                child: CustemTextFormFiled(
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
              ),
              SizedBox(
                height: 35,
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
                        btnName: AppStrings.sendResetPasswordLink,
                        height: MediaQuery.of(context).size.height * 0.075,
                        onPressed: () {
                          if (authCubit.resetPassKey.currentState!.validate()) {
                            authCubit.resetPasswordWithEmilLink();
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
