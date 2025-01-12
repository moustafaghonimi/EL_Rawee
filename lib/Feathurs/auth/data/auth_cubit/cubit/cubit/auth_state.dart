sealed class AuthState {}

final class AuthInitial extends AuthState {}

// ====== sign up ===========

final class SignUpLoadingState extends AuthState {}

final class SignUpScuccessState extends AuthState {}

final class SignUpMessageState extends AuthState {
  final String errorMessage;
  SignUpMessageState(this.errorMessage);
}

final class CheckBoxTermsAndConditionsState extends AuthState {}

// ====== sign in ===========
final class SigninLoadingState extends AuthState {}

final class SigninScuccessState extends AuthState {}

final class SigninMessageState extends AuthState {
  final String errorMessage;
  SigninMessageState(this.errorMessage);
}
