import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_password_params.freezed.dart';

@freezed
class UpdatePasswordParams with _$UpdatePasswordParams {
  const factory UpdatePasswordParams({
    required String password,
    required String repeatPassword,
  }) = _UpdatePasswordParams;

  factory UpdatePasswordParams.empty() => const UpdatePasswordParams(
        password: 'password',
        repeatPassword: 'password',
      );
}
