import 'package:final_advanced_mobile/screens/CoursesPage/CoursesPage.dart';
import 'package:final_advanced_mobile/screens/LoginPage/LoginPage.dart';
import 'package:final_advanced_mobile/screens/RegistPage/RegistPage.dart';
import 'package:final_advanced_mobile/screens/TutorPage/TutorPage.dart';
import 'package:flutter/material.dart';



Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case 'login':
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case 'register':
      return MaterialPageRoute(builder: (context) => const RegistPage());
    case 'forgot_password':
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case 'course':
      return MaterialPageRoute(builder: (context) => const CoursesPage());
    case 'tutor':
      return MaterialPageRoute(builder: (context) => const TutorPage());
    default:
      return MaterialPageRoute(builder: (context) => const LoginPage());
  }
}
