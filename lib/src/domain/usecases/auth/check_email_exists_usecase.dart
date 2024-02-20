import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';

class CheckEmailExistsUsecase extends UsecaseWithParams<bool, String> {
  const CheckEmailExistsUsecase(this._repo);

  final AuthRepo _repo;
  @override
  ResultFuture<bool> call(String params) => _repo.checkIfEmailExists(params);
}
