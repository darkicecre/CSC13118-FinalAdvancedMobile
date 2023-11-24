import 'package:final_advanced_mobile/models/Tutor.dart';
import 'package:final_advanced_mobile/screens/CoursesPage/CoursesPage.dart';
import 'package:final_advanced_mobile/screens/LoginPage/LoginPage.dart';
import 'package:final_advanced_mobile/screens/RegistPage/RegistPage.dart';
import 'package:final_advanced_mobile/screens/ReserPassword/ResetPasswordPage.dart';
import 'package:final_advanced_mobile/screens/ReserPassword/ResetPasswordSentPage.dart';
import 'package:final_advanced_mobile/screens/TutorDetailPage/TutorDetailPage.dart';
import 'package:final_advanced_mobile/screens/TutorPage/TutorPage.dart';
import 'package:flutter/material.dart';



Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case 'login':
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case 'register':
      return MaterialPageRoute(builder: (context) => const RegistPage());
    case 'reset_password':
      return MaterialPageRoute(builder: (context) => const ResetPasswordPage());
    case 'reset_password_sent':
      return MaterialPageRoute(builder: (context) => const ResetPasswordSentPage());
    case 'forgot_password':
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case 'course':
      return MaterialPageRoute(builder: (context) => const CoursesPage());
    case 'tutor':
      return MaterialPageRoute(builder: (context) => const TutorPage());
    case 'tutor_detail':
      return MaterialPageRoute(builder: (context){
        Map<String, Tutor> arg = settings.arguments as Map<String, Tutor>;
        return TutorDetailPage(tutor: arg["tutor"] as Tutor);
      });
    default:
      return MaterialPageRoute(builder: (context) => const LoginPage());
  }
}
