import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  late String lang;

  SettingProvider() {
    lang = "Vietnamese";
  }

  void changeLanguage(String language) {
    this.lang = language;
    notifyListeners();
  }
}
