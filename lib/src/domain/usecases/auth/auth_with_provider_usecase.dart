import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';

class AuthWithProviderUsecase
    extends UsecaseWithParams<User, AuthWithProviderParams> {
  const AuthWithProviderUsecase(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<User> call(AuthWithProviderParams params) =>
      _repo.authWithProvider(
        provider: params.provider,
        providerId: params.providerId,
        email: params.email,
      );
}

class AuthWithProviderParams {
  const AuthWithProviderParams({
    required this.provider,
    required this.providerId,
    required this.email,
  });

  factory AuthWithProviderParams.empty() => const AuthWithProviderParams(
        provider: AuthWithProvider.google,
        email: 'empty',
        providerId: 'empty',
      );

  final AuthWithProvider provider;
  final String email;
  final String providerId;
}
