import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';
import 'package:locall_app/src/domain/usecases/auth/params/auth_with_provider_params.dart';

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
        coordinates: params.coordinates,
      );
}
