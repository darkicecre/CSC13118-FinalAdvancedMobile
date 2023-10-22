import 'package:final_advanced_mobile/pages/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/pages/ReUse/VideoPlayerController.dart';
import 'package:final_advanced_mobile/pages/TutorDetailPage/BookTutorTable.dart';
import 'package:final_advanced_mobile/pages/TutorDetailPage/TutorDetailInfo.dart';
import 'package:final_advanced_mobile/pages/TutorDetailPage/TutorInfoAction.dart';
import 'package:final_advanced_mobile/pages/TutorDetailPage/TutorSumaryInfo.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TutorDetailPage extends StatefulWidget {
  const TutorDetailPage({super.key});

  @override
  State<TutorDetailPage> createState() => _TutorPageState();
}

class _TutorPageState extends State<TutorDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: ListView(
            children: [
              TutorSumaryInfo(),
              TutorInfoAction(),
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 20,right: 20,bottom: 25),
                child: VideoPlayerScreen(),
              ),
              TutorDetailInfo(),
              BookTutorTable(),
            ],
          ),
        ),
    );
  }
}

