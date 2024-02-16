part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn({
    required String emailOrUsername,
    required String password,
  }) = _SignInEvent;

  const factory AuthEvent.signUp({
    required String email,
    required String password,
    required String repeatPassword,
    required String username,
    required List<double> coordinates,
  }) = _SignUpEvent;

  const factory AuthEvent.authWithProvider({
    required AuthWithProvider provider,
    required String email,
    required String providerId,
    required List<double> coordinates,
  }) = _AuthWithProviderEvent;

  const factory AuthEvent.updatePassword({
    required String password,
    required String repeatPassword,
  }) = _UpdatePasswordEvent;

  const factory AuthEvent.updateUser(User user) = _UpdateUserEvent;

  const factory AuthEvent.forgotPassword(String email) = _ForgotPasswordEvent;
}
