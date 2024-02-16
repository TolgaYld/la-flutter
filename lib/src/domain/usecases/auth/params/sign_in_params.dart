import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_params.freezed.dart';

@freezed
class SignInParams with _$SignInParams {
  const factory SignInParams({
    required String emailOrUsername,
    required String password,
  }) = _SignInParams;

  factory SignInParams.empty() => const SignInParams(
        emailOrUsername: 'empty',
        password: 'empty',
      );
}
