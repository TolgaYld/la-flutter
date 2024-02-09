import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:locall_app/core/common/l10n/l10n.dart';
import 'package:locall_app/core/services/dependency_injection/injection.dart';
import 'package:locall_app/core/utils/env/environment.dart';
import 'package:locall_app/src/application/theme_mode/theme_mode.dart';
import 'package:locall_app/theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: Enviroment.fileName);
  await init();
  await sl<ThemeModeServiceProvider>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: sl<ThemeModeServiceProvider>(),
        ),
      ],
      child: Consumer<ThemeModeServiceProvider>(
        builder: (context, themeService, child) {
          return MultiBlocProvider(
            providers: const [
              // BlocProvider<AuthModeCubit>(
              //   create: (context) => AuthModeCubit(),
              // ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              supportedLocales: L10n.all,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              title: 'La-Flutter',
              theme: AppTheme.lightTheme,
              themeMode: themeService.useSystemTheme
                  ? ThemeMode.system
                  : themeService.isDarkModeOn
                      ? ThemeMode.dark
                      : ThemeMode.light,
              home: const Placeholder(),
            ),
          );
        },
      ),
    );
  }
}
