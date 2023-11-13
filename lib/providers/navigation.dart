import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int navigationIdx = 0;

  int get index => navigationIdx;

  set index(int value) {
    navigationIdx = value;
    notifyListeners();
  }
}
