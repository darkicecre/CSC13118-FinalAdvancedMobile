import 'package:final_advanced_mobile/constants/profiles.dart';
import 'package:final_advanced_mobile/models/Profile.dart';
import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  late String lang;
  late Profile profile;

  SettingProvider() {
    lang = "Vietnamese";
  }

  void getProfile(String email){
    if(email=="tutor"){
      this.profile = tutor;
    }
    else{
      this.profile = member;
    }
  }

  void changeLanguage(String language) {
    this.lang = language;
    notifyListeners();
  }
}
