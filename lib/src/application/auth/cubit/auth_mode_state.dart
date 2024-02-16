part of 'auth_mode_cubit.dart';

@freezed
class AuthModeState with _$AuthModeState {
  const factory AuthModeState.signIn() = _SignInState;
  const factory AuthModeState.signUp() = _SignUpState;
  const factory AuthModeState.forgotPassword() = _ForgotPasswordState;
}
