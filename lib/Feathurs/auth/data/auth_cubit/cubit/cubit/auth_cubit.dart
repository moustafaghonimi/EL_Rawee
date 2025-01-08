import 'package:bloc/bloc.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? emailAddress;
  String? password;
  String? firstName;
  String? lastName;
  signUpAutheWithEmailAndPassword() async {
    try {
      SignUpLoadingState();
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      SignUpStateDone();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        SignUpMessageState('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        SignUpMessageState('The account already exists for that email.');
      }
    } catch (e) {
      SignUpMessageState(e.toString());
    }
  }
}
