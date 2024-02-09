import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/repositories/theme_mode/theme_mode_repo.dart';

class SetThemeModeUsecase extends UsecaseWithParams<void, bool> {
  const SetThemeModeUsecase(this._repo);

  final ThemeModeRepo _repo;
  @override
  ResultFuture<void> call(bool params) => _repo.setThemeMode(mode: params);
}
