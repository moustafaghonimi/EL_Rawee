sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpStateDone extends AuthState {}

final class SignUpMessageState extends AuthState {
  final String message;
  SignUpMessageState(this.message);
}
