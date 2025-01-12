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
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  bool checkBoxtermsAndConditionsValue = false;
  final emailRegex = RegExp(AppStrings.emailRegex);
  final passwordRegex = RegExp(AppStrings.passwordRegex);
  bool isPassword = false;

// ====== sign up ===========
  signUpAutheWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      verifieEmail();
      emit(SignUpScuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpMessageState('The password provided is too weak.👀'));
      } else if (e.code == 'email-already-in-use') {
        emit(
            SignUpMessageState('The account already exists for that email.😁'));
      }
    } catch (e) {
      emit(SignUpMessageState(e.toString()));
    }
  }

// ====== Verifie email ===========

  verifieEmail() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null && !user.emailVerified) {
      await user.sendEmailVerification();
    }
  }

  void checkBoxTermsAndConditions(bool value) {
    checkBoxtermsAndConditionsValue = value;
    emit(CheckBoxTermsAndConditionsState());
  }

// ====== sign in ===========

  signInWithEmailAndPassword() async {
    try {
      emit(SigninLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SigninScuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SigninMessageState('No user found for that email , Create One.'));
      } else if (e.code == 'wrong-password') {
        emit(SigninMessageState('Wrong password provided for that user.'));
      } else {
        emit(SigninMessageState('Please Check Email And Password 🤷‍♀️🤦‍♂️'));
      }
    } catch (e) {
      emit(SigninMessageState(e.toString()));
    }
  }
}
