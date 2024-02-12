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
        repeatPassword: params.repeatPassword,
        coordinates: params.coordinates,
      );
}

class SignUpParams {
  const SignUpParams({
    required this.email,
    required this.password,
    required this.repeatPassword,
    required this.username,
    required this.coordinates,
  });

  SignUpParams.empty()
      : this(
          email: '',
          password: '',
          username: '',
          repeatPassword: '',
          coordinates: [3.69, 3.69],
        );

  final String email;
  final String password;
  final String repeatPassword;
  final String username;
  final List<double> coordinates;
}
