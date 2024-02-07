import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/features/theme_mode/domain/repositories/theme_mode_repo.dart';

class GetThemeModeUsecase extends UsecaseWithoutParams<bool> {
  const GetThemeModeUsecase(this._repo);

  final ThemeModeRepo _repo;
  @override
  ResultFuture<bool> call() => _repo.getThemeMode();
}
