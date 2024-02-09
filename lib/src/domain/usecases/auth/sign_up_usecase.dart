import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';

class SignUpUsecase extends UsecaseWithParams<User, SignUpParams> {
  const SignUpUsecase(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<User> call(SignUpParams params) => _repo.signUp(
        username: params.username,
        email: params.email,
        password: params.password,
      );
}

class SignUpParams {
  const SignUpParams({
    required this.email,
    required this.password,
    required this.username,
  });

  const SignUpParams.empty() : this(email: '', password: '', username: '');

  final String email;
  final String password;
  final String username;
}
