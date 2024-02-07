part of 'injection.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await initAuth(sl);
  await initThemeMode(sl);
}
