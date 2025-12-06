
import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

extension ThemeModeParsing on String {
  ThemeMode? toThemeMode() => switch (toLowerCase()) {
    'light' => ThemeMode.light,
    'dark' => ThemeMode.dark,
    'system' => ThemeMode.system,
    _ => null,
  };
}

extension PageThemeExtension on ThemeMode {
  String localized(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return switch (this) {
      ThemeMode.light => loc.themeLight,
      ThemeMode.dark => loc.themeDark,
      ThemeMode.system => "system"
    };
  }
}

enum Language {
  english, arabic, german, french, chinese;
  String get value => name;
  String get localize => switch (this) {
    Language.english => "English",
    Language.arabic => "العربية",
    Language.french => "Français",
    Language.chinese => "中文",
    Language.german => "Deutsch"
  };
  factory Language.fromString(String s) =>
      Language.values.firstWhere((e) => e.name == s);

  static Locale locale(Language lang) => switch (lang) {
    Language.arabic => const Locale('ar'),
    Language.english => const Locale('en'),
    Language.french => const Locale('fr'),
    Language.german => const Locale('de'),
    Language.chinese => const Locale('zh'),
  };
}
