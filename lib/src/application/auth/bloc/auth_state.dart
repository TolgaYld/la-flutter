part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _InitialState;
  const factory AuthState.signedUp(User user) = _SignedUpState;
  const factory AuthState.signedIn(User user) = _SignedInState;
  const factory AuthState.userUpdated() = _UserUpdatedState;
  const factory AuthState.passwordChanged() = _PasswordChangedState;
  const factory AuthState.authenticatedWithProvider(User user) =
      _AuhtWithProviderState;
  const factory AuthState.passwordResetted() = _PasswordResettedState;
  const factory AuthState.loading() = _LoadingState;
  const factory AuthState.error(String message) = _ErrorState;
}
