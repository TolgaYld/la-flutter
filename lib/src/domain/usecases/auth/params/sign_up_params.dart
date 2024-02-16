import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_params.freezed.dart';

@freezed
class SignUpParams with _$SignUpParams {
  const factory SignUpParams({
    required String email,
    required String password,
    required String repeatPassword,
    required String username,
    required List<double> coordinates,
  }) = _SignUpParams;

  factory SignUpParams.empty() => const SignUpParams(
        email: '',
        password: '',
        username: '',
        repeatPassword: '',
        coordinates: [3.69, 3.69],
      );
}
