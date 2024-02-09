import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/repositories/theme_mode/theme_mode_repo.dart';

class GetUseSystemThemeUsecase extends UsecaseWithoutParams<bool> {
  const GetUseSystemThemeUsecase(this._repo);

  final ThemeModeRepo _repo;
  @override
  ResultFuture<bool> call() => _repo.getUseSystemTheme();
}
