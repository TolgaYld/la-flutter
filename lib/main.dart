import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:locall_app/core/services/dependency_injection/injection.dart';
import 'package:locall_app/core/utils/l10n/language_manager.dart';
import 'package:locall_app/src/application/theme_mode/theme_mode.dart';
import 'package:locall_app/src/presentation/pages/auth/auth_page.dart';
import 'package:locall_app/theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: LanguageManager.supportedLocales,
            title: 'La-Flutter',
            theme: AppTheme.lightTheme,
            themeMode: themeService.useSystemTheme
                ? ThemeMode.system
                : themeService.isDarkModeOn
                    ? ThemeMode.dark
                    : ThemeMode.light,
            home: const AuthPage(),
          );
        },
      ),
    );
  }
}
