import 'package:final_advanced_mobile/pages/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorBanner.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorList.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorSearch.dart';
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
      floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {},
                shape: CircleBorder(),
                backgroundColor: Color.fromRGBO(128, 128, 128, 1),
                child: FaIcon(
                  FontAwesomeIcons.gift,
                  size: 35,
                  color: Color.fromRGBO(235, 235, 235, 1),
                ),
              ),
              SizedBox(height: 10,),
              FloatingActionButton(
                onPressed: () {},
                shape: CircleBorder(),
                backgroundColor: Color.fromRGBO(128, 128, 128, 1),
                child: FaIcon(
                  FontAwesomeIcons.commentDots,
                  size: 35,
                  color: Color.fromRGBO(235, 235, 235, 1),
                ),
              )
            ],
          )
      )
    );
  }
}

