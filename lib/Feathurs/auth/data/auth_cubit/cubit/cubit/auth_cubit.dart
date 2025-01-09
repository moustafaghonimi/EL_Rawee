import 'package:bloc/bloc.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? emailAddress;
  String? password;
  String? firstName;
  String? lastName;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  bool checkBoxtermsAndConditionsValue = false;
  final emailRegex = RegExp(AppStrings.emailRegex);
  final passwordRegex = RegExp(AppStrings.passwordRegex);
  bool isPassword = false;

  signUpAutheWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpScuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpMessageState('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpMessageState('The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpMessageState(e.toString()));
    }
  }

  void checkBoxTermsAndConditions(bool value) {
    checkBoxtermsAndConditionsValue = value;
    emit(CheckBoxTermsAndConditionsState());
  }
}
