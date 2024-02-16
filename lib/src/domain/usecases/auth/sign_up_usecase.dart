import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';
import 'package:locall_app/src/domain/usecases/auth/params/sign_up_params.dart';

class SignUpUsecase extends UsecaseWithParams<User, SignUpParams> {
  const SignUpUsecase(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<User> call(SignUpParams params) => _repo.signUp(
        username: params.username,
        email: params.email,
        password: params.password,
        repeatPassword: params.repeatPassword,
        coordinates: params.coordinates,
      );
}
