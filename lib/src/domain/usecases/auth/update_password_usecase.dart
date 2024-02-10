import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';

class UpdatePasswordUsecase
    extends UsecaseWithParams<void, UpdatePasswordParams> {
  const UpdatePasswordUsecase(this._repo);

  final AuthRepo _repo;
  @override
  ResultFuture<void> call(UpdatePasswordParams params) => _repo.updatePassword(
        password: params.password,
        repeatPassword: params.repeatPassword,
      );
}

class UpdatePasswordParams {
  const UpdatePasswordParams({
    required this.password,
    required this.repeatPassword,
  });

  const UpdatePasswordParams.empty()
      : this(
          password: 'password',
          repeatPassword: 'password',
        );

  final String password;
  final String repeatPassword;
}
