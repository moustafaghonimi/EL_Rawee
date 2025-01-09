sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpScuccessState extends AuthState {}

final class SignUpMessageState extends AuthState {
  final String errorMessage;
  SignUpMessageState(this.errorMessage);
}

final class CheckBoxTermsAndConditionsState extends AuthState {}
