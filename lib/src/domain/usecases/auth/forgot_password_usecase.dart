import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';

class ForgotPasswordUsecase extends UsecaseWithParams<void, String> {
  const ForgotPasswordUsecase(this._repo);
  final AuthRepo _repo;
  @override
  ResultFuture<void> call(String params) => _repo.forgotPassword(params);
}
