
import 'package:flutter/material.dart';
import '../core/app_config.dart';

class HomeViewModel extends ChangeNotifier {
  final AppConfig app;

  HomeViewModel(this.app) {
    loadData();
  }

  bool isLoading = true;
  String? errMsg;

  Future<void> loadData() async {
    isLoading = true;
    errMsg = null;
    notifyListeners();

    try {
      // TODO loading necessary config data for home here.
    } catch (e) {
      errMsg = "Failed to load data: $e";
    }

    isLoading = false;
    notifyListeners();
  }

}