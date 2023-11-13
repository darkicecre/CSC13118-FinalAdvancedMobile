import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyFloatingActionButton.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorBanner.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorList.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorSearch.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TutorPage extends StatefulWidget {
  const TutorPage({super.key});

  @override
  State<TutorPage> createState() => _TutorPageState();
}

class _TutorPageState extends State<TutorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: ListView(
          children: [
            TutorBanner(),
            TutorSearch(),
            TutorList()

          ],
        ),
      ),
      floatingActionButton: MyFloatingActionButton()
    );
  }
}

