import 'package:final_advanced_mobile/pages/CoursesPage/CoursesPage.dart';
import 'package:final_advanced_mobile/pages/HistoryPage/HistoryPage.dart';
import 'package:final_advanced_mobile/pages/LoginPage/LoginPage.dart';
import 'package:final_advanced_mobile/pages/SchedulePage/SchedulePage.dart';
import 'package:final_advanced_mobile/pages/TutorDetailPage/TutorDetailPage.dart';
import 'package:final_advanced_mobile/pages/TutorPage/TutorPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CoursesPage(),
    );
  }
}