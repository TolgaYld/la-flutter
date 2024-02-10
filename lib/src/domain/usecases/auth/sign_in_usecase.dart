import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';

class SignInUsecase extends UsecaseWithParams<User, SignInParams> {
  const SignInUsecase(this._repo);

  final AuthRepo _repo;
  @override
  ResultFuture<User> call(SignInParams params) => _repo.signIn(
        email: params.email,
        password: params.password,
      );
}

class SignInParams {
  const SignInParams({required this.email, required this.password});

  SignInParams.empty() : this(email: 'empty', password: 'empty');

  final String email;
  final String password;
}
