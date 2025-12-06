
import 'dart:convert';
import 'package:flutter/material.dart';
import '../data/app_constants.dart';

class ConfigModel {
  // TODO add app config params here
  // App Display:-
  ThemeMode theme = ThemeMode.light; // dark/light mode
  Language language = Language.english;

  ConfigModel({
    // TODO add app config params here
    this.theme = ThemeMode.light,
    this.language = Language.english,
  });

  factory ConfigModel.fromJson(Map<String, dynamic> json) =>
    ConfigModel(
      // TODO add app config params here
      theme: (json['theme'] as String? ?? ThemeMode.light.name).toThemeMode() ?? ThemeMode.light,
      language: Language.fromString(json['language'] ?? Language.english.name),
    );

  Map<String, dynamic> toJson() => {
    // TODO add app config params here
    "theme": theme.name,
    "language": language.name,
  };

  void copy(ConfigModel other) {
    // TODO add app config params here
    theme = other.theme;
    language = other.language;
  }

   /// Reset everything to defaults
  void reset() => copy(ConfigModel());

  /// Export configuration as JSON string
  String exportToJsonString() => jsonEncode(toJson());

  /// Import configuration from JSON string
  void importFromJsonString(String jsonStr) =>
    copy(ConfigModel.fromJson(jsonDecode(jsonStr)));
}