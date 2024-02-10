import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';

class UpdateUserUsecase extends UsecaseWithParams<void, User> {
  const UpdateUserUsecase(this._repo);

  final AuthRepo _repo;
  @override
  ResultFuture<void> call(User params) => _repo.updateUser(params);
}
