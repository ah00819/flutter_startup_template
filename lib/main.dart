
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:smart_queue_flutter_frontend/views/home_view.dart';
import 'core/app_config.dart';
import 'data/app_constants.dart';
import 'data/app_routes.dart';
import 'data/app_styles.dart';
import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig().load();
  runApp(
      ChangeNotifierProvider(
        create:(_) => AppConfig(),
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppConfig>();

    return MaterialApp(
      title: AppLocalizations.of(context)?.appTitle ?? "Smart Queue",
      locale: Language.locale(app.config.language),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routes: {
        AppRoutes.home: (_) => HomeView(),
        // TODO app routes goes here
      },
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
      // Themes
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: app.config.theme,
    );
  }
}