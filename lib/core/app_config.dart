
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/app_constants.dart';
import '../models/config_model.dart';

class AppConfig extends ChangeNotifier {
  // private constructor assigned to _instance to prevent direct _instance access
  static final AppConfig _instance = AppConfig._internal();
  AppConfig._internal();
  // Singleton AppConfig
  factory AppConfig() => _instance;

  late SharedPreferences _prefs;
  late ConfigModel _config;

  ConfigModel get config => _config;
  set config(ConfigModel newConfig) {
    _config = newConfig;
    notifyListeners();
  }

  /// Load configuration from storage; this should be run first thing.
  Future<void> load() async {
    // make/load configuration in/from preferences
    _prefs = await SharedPreferences.getInstance();
    String? jsonStr = _prefs.getString("app_config");
    _config = jsonStr != null ? ConfigModel.fromJson(jsonDecode(jsonStr)) : ConfigModel();

    notifyListeners();
  }

  /// Save manually when user taps "Apply"
  Future<void> save() async {
    await _prefs.setString("app_config", jsonEncode(_config.toJson()));
    notifyListeners();
  }

  /// Reset to default configuration
  Future<void> resetToDefaults() async {
    _config.reset();
    await save();
  }

  /// Export current configuration
  String exportConfig() => _config.exportToJsonString();

  /// Import configuration and save
  Future<void> importConfig(String jsonStr) async {
    config.importFromJsonString(jsonStr);
    await save();
  }

  /// extra setters one way to use in Drawer
  void setTheme(ThemeMode mode) {
    _config.theme = mode;
    notifyListeners();
    save();
  }
  void setLanguage(Language lang) {
    _config.language = lang;
    notifyListeners();
    save();
  }

  /// Sources file
  Future<File> _getFile(String filePath) async {
    final dir = await getApplicationDocumentsDirectory();
    return File('${dir.path}/$filePath');
  }
}
